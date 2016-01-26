package cn.edu.csu.douban.dao;

import cn.edu.csu.douban.form.PageForm;
import cn.edu.csu.douban.form.MovieForm;
import cn.edu.csu.douban.form.PageForm;
import cn.edu.csu.douban.pojo.Comment;
import cn.edu.csu.douban.pojo.Movie;
import cn.edu.csu.douban.pojo.Recommand;
import org.hibernate.Query;
import org.hibernate.classic.Session;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by weigang.lu on 2016/1/23.
 */
@Repository
public class MovieDao extends BaseHibernateDao<Movie, Integer> {

    private static final String COMMENT_QUERY =  " from User u "
                                                + " inner join u.comments c "
                                                + " inner join c.movie m"
                                                + " where u.userId=? ";

    public List<Comment> findCommentsByUserId(String userId) {

        String hql = " select c, m " + COMMENT_QUERY;

        List<Object[]> list = getHibernateTemplate().find(hql, userId);
        return parseCommentsResult(list);
    }

    public List<Comment> findCommentsByUserIdWithPagination(PageForm pageForm) {

        String hql = " select c, m " + COMMENT_QUERY;
        Session session = getHibernateTemplate().getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        query.setString(0, pageForm.getUserId());
        query.setFirstResult(pageForm.getFirstNum());
        query.setMaxResults(pageForm.getRows());
        List<Object[]> list = query.list();
        session.close();
        return parseCommentsResult(list);
    }

    public List<Movie> findMoviesWithPagination(PageForm pageForm) {
        String hql = " from Movie m ";
        Session session = getHibernateTemplate().getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        query.setFirstResult(pageForm.getFirstNum());
        query.setMaxResults(pageForm.getRows());
        List<Movie> movies = query.list();
        session.close();
        return movies;
    }

    public long getMoviesCount() {
        String hql = " select count(m) from Movie m ";
        List<Long> list = getHibernateTemplate().find(hql);
        return list.get(0);
    }

    public long getCommentsCountByUserId(PageForm pageForm) {
        String hql = " select count(m) " + COMMENT_QUERY;
        List<Long> list = getHibernateTemplate().find(hql, pageForm.getUserId());
        return list.get(0);
    }

    private List<Comment> parseCommentsResult(List<Object[]> list) {
        List<Comment> comments = new ArrayList<Comment>();
        for (Object[] obj : list) {
            Comment comment = (Comment) obj[0];
            Movie movie = (Movie) obj[1];
            comment.setMovie(movie);
            comments.add(comment);
        }
        return comments;
    }

    public List<Movie> findMoviesByCondition(MovieForm movieForm) {

        String sort = movieForm.getSort().equals("recommend")?"count(*)":movieForm.getSort();

        String hql = " select m, count(*) "
                   + " from Comment c "
                   + " join c.movie m "
                   + " group by m.id "
                   + " having m.category like ? "
                   + " order by " + sort + " desc";

        List<Object[]> list = getHibernateTemplate().
                find(hql, '%' + movieForm.getTag() + '%');
        List<Movie> movies = new ArrayList<Movie>();
        for (Object[] obj : list) {
            movies.add((Movie) obj[0]);
        }
        return movies;
    }

    public List<Movie> findRecommandMovieByUserId(String userId) {
        List<Recommand> recommands = new ArrayList<Recommand>();

        String hql = " select m from Recommand r "
                   + " join r.movie m "
                   + " where r.user.userId=? "
                   + " order by r.rate desc ";

        return getHibernateTemplate().find(hql, userId);
    }

    public List<Movie> findMoviesByCategory(String favorite) {
        String favoriteFormate;
        if (favorite.contains(",")) {
            favoriteFormate =favorite.split(",")[0];
        }else{
            favoriteFormate=favorite;
        }

        String hql = " select m"
                + " from Movie m "
                + " where m.category like ? "
                + " order by m.rate desc";

        return getHibernateTemplate().find(hql, '%' + favoriteFormate + '%');
    }
}
