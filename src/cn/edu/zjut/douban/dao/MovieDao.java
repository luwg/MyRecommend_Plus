package cn.edu.zjut.douban.dao;

import cn.edu.zjut.douban.form.MovieForm;
import cn.edu.zjut.douban.mapper.MovieMapper;
import cn.edu.zjut.douban.pojo.Comment;
import cn.edu.zjut.douban.pojo.Movie;
import cn.edu.zjut.douban.pojo.Recommand;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by shenao on 2015/5/21.
 */
@Repository
public class MovieDao extends BaseHibernateDao<Movie, Integer> {

    public List<Comment> findCommentsByUserId(String userId) {

        List<Comment> comments = new ArrayList<Comment>();

        String hql = " select c, m from User u "
                   + " inner join u.comments c "
                   + " inner join c.movie m"
                   + " where u.userId=? ";

        List<Object[]> list = getHibernateTemplate().find(hql, userId);
        for (Object[] obj : list) {
            Comment comment = (Comment) obj[0];
            Movie movie = (Movie) obj[1];
            comment.setMovie(movie);
            comments.add(comment);
        }
        return comments;
    }

    public List<Movie> findMoviesByCondition(MovieForm movieForm) {
//        String hql = " select m from Movie m"
//                   + " where m.category like ? ";

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

}
