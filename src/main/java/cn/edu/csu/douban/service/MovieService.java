package cn.edu.csu.douban.service;

import cn.edu.csu.douban.dao.CategoryDao;
import cn.edu.csu.douban.dao.CommentDao;
import cn.edu.csu.douban.dao.MovieDao;
import cn.edu.csu.douban.form.MovieForm;
import cn.edu.csu.douban.form.PageForm;
import cn.edu.csu.douban.pojo.Category;
import cn.edu.csu.douban.pojo.Comment;
import cn.edu.csu.douban.pojo.Movie;
import cn.edu.csu.douban.pojo.User;
import cn.edu.csu.douban.util.BeanUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by weigang.lu on 2016/1/23.
 */
@Service
public class MovieService {

    @Autowired
    private MovieDao movieDao;

    @Autowired
    private CategoryDao categoryDao;

    @Autowired
    private CommentDao commentDao;

    public List<Comment> getTheCommentedMovies(int userId) {
        return movieDao.findCommentsByUserId(userId);
    }

    public List<Comment> getCommentsByUserIdWithPagination(PageForm pageForm) {
        return movieDao.findCommentsByUserIdWithPagination(pageForm);
    }

    public List<Movie> getMoviesWithPagination(PageForm pageForm) {
        return movieDao.findMoviesWithPagination(pageForm);
    }

    public long getCommentsCount(PageForm pageForm) {
        return movieDao.getCommentsCountByUserId(pageForm);
    }

    public List<Movie> getMovies(MovieForm movieForm) {
        return movieDao.findMoviesByCondition(movieForm);
    }

    public long getMovieCount() {
        return movieDao.getMoviesCount();
    }

    public List<Category> getAllCategories() {
        return categoryDao.findAll();
    }

    public List<Movie> getRecommandMovies(User user) {
        List<Movie> movies = new ArrayList<Movie>();
        movies = movieDao.findRecommandMovieByUserId(user.getUserId());
        if (movies.size() == 0) {
            movies = movieDao.findMoviesByCategory(user.getFavorite()==null?"爱情":user.getFavorite());
        }
        return movies.size()>12?movies.subList(0,12):movies;
    }

    public void updateMovie(Movie movie) {
        if (movie.getId() != 0) {
            Movie dbMovie = movieDao.findById(movie.getId());
            BeanUtil.combine(movie, dbMovie);
            movieDao.update(movie);
        } else {
            movieDao.save(movie);
        }
    }

    public void deleteMovie(int id) {
        Movie movie = movieDao.findById(id);
        movieDao.delete(movie);
    }

    public Movie getMovieById(int movieId) {
        return movieDao.findById(movieId);
    }

    public void addComment(Comment comment) {
        commentDao.save(comment);
    }

}
