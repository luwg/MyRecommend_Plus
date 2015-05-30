package cn.edu.zjut.douban.service;

import cn.edu.zjut.douban.dao.CategoryDao;
import cn.edu.zjut.douban.dao.MovieDao;
import cn.edu.zjut.douban.form.MovieForm;
import cn.edu.zjut.douban.pojo.Category;
import cn.edu.zjut.douban.pojo.Comment;
import cn.edu.zjut.douban.pojo.Movie;
import cn.edu.zjut.douban.pojo.Recommand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Locale;
import java.util.Set;

/**
 * Created by shenao on 2015/5/21.
 */
@Service
public class MovieService {

    @Autowired
    private MovieDao movieDao;

    @Autowired
    private CategoryDao categoryDao;

    public List<Comment> getTheCommentedMovies(String userId) {
        return movieDao.findCommentsByUserId(userId);
    }

    public List<Movie> getMovies(MovieForm movieForm) {
        return movieDao.findMoviesByCondition(movieForm);
    }

    public List<Category> getAllCategories() {
        return categoryDao.findAll();
    }

    public List<Movie> getRecommandMovies(String userId) {
        List<Movie> movies = movieDao.findRecommandMovieByUserId(userId);
        return movies.subList(0, 10);
    }
}
