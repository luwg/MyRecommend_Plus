package cn.edu.zjut.douban.service;

import cn.edu.zjut.douban.dao.MovieDao;
import cn.edu.zjut.douban.dao.RecommandDao;
import cn.edu.zjut.douban.dao.UserDao;
import cn.edu.zjut.douban.pojo.Comment;
import cn.edu.zjut.douban.pojo.Movie;
import cn.edu.zjut.douban.pojo.Recommand;
import cn.edu.zjut.douban.pojo.User;
import cn.edu.zjut.douban.util.RecommandUtil;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import java.util.*;

/**
 * Created by shenao on 2015/5/28.
 */
public class RecommandService {

    private UserDao userDao;

    private MovieDao movieDao;

    private RecommandDao recommandDao;

    public RecommandService() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext("application-*.xml");
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
                    double similarity = RecommandUtil.simPearson(userComments, user, other);
                    double rate = comment.getRate();
                    sumSim += similarity;
                    sumRate += rate*similarity;
                }
            }
            Recommand recommand = new Recommand();
            recommand.setUser(user);
            recommand.setMovie(movie);
            recommand.setRate(sumSim==0?0.0:(sumRate / sumSim));
            movieRecommand.add(recommand);
        }

        return movieRecommand;
    }


    public static void main(String[] args) {
        RecommandService service = new RecommandService();
        Map<User, Map<Movie, Comment>> userComments = service.getAllUserComments();
        List<Movie> allMovies = service.movieDao.findAll();
        List<User> users = service.userDao.findAll();
        boolean flag = true;
        List<Recommand> recommandMovie = new ArrayList<Recommand>();
        int count = 0;
        for (User user : users) {
            System.out.println(++count );
            recommandMovie.addAll(service.getRecommandMovies(userComments, allMovies, user));
        }
        System.out.println(recommandMovie.size());
        service.recommandDao.batchSave(recommandMovie);
    }
}
