package cn.edu.zjut.douban.mapper;

import cn.edu.zjut.douban.pojo.Movie;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by shenao on 2015/5/29.
 */
public class MovieMapper implements RowMapper<Movie> {
    @Override
    public Movie mapRow(ResultSet rs, int i) throws SQLException {
        Movie movie = new Movie();
        movie.setId(rs.getInt("id"));
        movie.setTitle(rs.getString("title"));
        movie.setUrl(rs.getString("url"));
        movie.setRate(rs.getDouble("rate"));
        movie.setCategory(rs.getString("category"));
        movie.setLanguage(rs.getString("language"));
        movie.setCover(rs.getString("cover"));
        movie.setReleaseDate(rs.getDate("release_date"));
        movie.setLenghtOfFilm(rs.getInt("length_of_film"));
        return null;
    }
}
