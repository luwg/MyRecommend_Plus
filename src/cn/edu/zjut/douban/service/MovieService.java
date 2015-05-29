package cn.edu.zjut.douban.service;

import cn.edu.zjut.douban.dao.MovieDao;
import cn.edu.zjut.douban.pojo.Comment;
import cn.edu.zjut.douban.pojo.Movie;
import cn.edu.zjut.douban.pojo.Recommand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

/**
 * Created by shenao on 2015/5/21.
 */
@Service
public class MovieService {

    @Autowired
    private MovieDao movieDao;

    public List<Comment> getTheCommentedMovies(String userId) {
        return movieDao.findCommentsByUserId(userId);
    }

    public List<Movie> getAllMovie() {
        return movieDao.findAll();
    }

    public List<Movie> getRecommandMovies(String userId) {
        List<Movie> movies = movieDao.findRecommandMovieByUserId(userId);
        return movies.subList(0, 10);
    }
}
