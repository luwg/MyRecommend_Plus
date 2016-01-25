package cn.edu.csu.douban.service;

import cn.edu.csu.douban.dao.MovieDao;
import cn.edu.csu.douban.dao.RecommandDao;
import cn.edu.csu.douban.dao.UserDao;
import cn.edu.csu.douban.pojo.Comment;
import cn.edu.csu.douban.pojo.Movie;
import cn.edu.csu.douban.pojo.Recommand;
import cn.edu.csu.douban.pojo.User;
import cn.edu.csu.douban.util.RecommandUtil;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by weigang.lu on 2016/1/23.
 */
public class RecommandService {

    private UserDao userDao;

    private MovieDao movieDao;

    private RecommandDao recommandDao;

    private static  final int MinSimRate = 35;

    private static final String TABLE_NAME="t_movie_recommand";

    public RecommandService() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext("/application-*.xml");
        userDao = (UserDao) ctx.getBean("userDao");
        movieDao = (MovieDao) ctx.getBean("movieDao");
        recommandDao = (RecommandDao) ctx.getBean("recommandDao");
    }

    /**
     * 构建所有用户的电影评论
     * @return
     */
    public Map<User, Map<Movie, Comment>> getAllUserComments() {
        Map<User, List<Comment>> map = new HashMap<User, List<Comment>>();
        Map<User, Map<Movie, Comment>> userComments = new HashMap<User, Map<Movie, Comment>>();
        List<User> users = userDao.findAll();
        for (User user : users) {
            List<Comment> comments = movieDao.findCommentsByUserId(user.getUserId());
            map.put(user, comments);
        }
        for (Map.Entry<User, List<Comment>> entry : map.entrySet()) {
            User user = entry.getKey();
            for (Comment comment : entry.getValue()) {
                Map<Movie, Comment> comments = null;
                if ((comments = userComments.get(user)) == null) {
                    comments = new HashMap<Movie, Comment>();
                    userComments.put(user, comments);
                }
                comments.put(comment.getMovie(), comment);
            }
        }
        return userComments;
    }

    /**
     * 获取某个用户的电影推荐
     * @param userComments 所有用户的电影评论
     * @param allMovie 目前所有的电影
     * @param user 需要获取推荐的用户
     * @param recommandList
     * @return
     */
    private List<Recommand> getRecommandMovies(Map<User, Map<Movie, Comment>> userComments,
                                               List<Movie> allMovie, User user) {
        List<Recommand> movieRecommand = new ArrayList<Recommand>();
        Map<Movie, Comment> comments = userComments.get(user);
        for (Movie movie : allMovie) {
            //若该用户已经对该电影评价过，则跳过
            if (comments.get(movie) != null) {
                continue;
            }
            double sumRate = 0, sumSim = 0;
            for (Map.Entry<User, Map<Movie, Comment>> entry : userComments.entrySet()) {
                User other = entry.getKey();
                //只需要别人对这部电影的评论
                if (other.equals(user)) {
                    continue;
                }
                Comment comment = null;
                if ((comment = userComments.get(other).get(movie)) != null) {
                    //计算皮尔逊相似度
                    double similarity = RecommandUtil.simPearson(userComments, user, other);
                    double rate = comment.getRate();
                    sumSim += similarity;
                    sumRate += rate*similarity;
                }
            }
            if (sumSim!=0&&sumRate / sumSim>MinSimRate) {
                Recommand recommand = new Recommand();
                recommand.setUser(user);
                recommand.setMovie(movie);
                recommand.setRate(sumRate / sumSim);
                movieRecommand.add(recommand);
            }
        }
        return movieRecommand;
    }

    public boolean updateRecommand() {
        try {
            long start = System.currentTimeMillis();
            RecommandService service = new RecommandService();
            Map<User, Map<Movie, Comment>> userComments = service.getAllUserComments();
            List<Movie> allMovies = service.movieDao.findAll();
            List<User> users = service.userDao.findAll();
            List<Recommand> recommandMovie = new ArrayList<Recommand>();
            int count = 0;
            for (User user : users) {
                System.out.println(++count);
                recommandMovie.addAll(service.getRecommandMovies(userComments, allMovies, user));
            }
            System.out.println(recommandMovie.size());
            service.recommandDao.turncateTable(TABLE_NAME);
            service.recommandDao.batchSave(recommandMovie);
            long end = System.currentTimeMillis();
            System.out.println("运行时间："+(end-start)/1000+"秒");
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }


    public static void main(String[] args) {
        RecommandService service = new RecommandService();
        service.updateRecommand();
    }
}
