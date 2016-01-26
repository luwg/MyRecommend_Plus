package cn.edu.csu.douban.mapper;

import cn.edu.csu.douban.pojo.Movie;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by weigang.lu on 2016/1/23.
 */
public class MovieMapper implements RowMapper<Movie> {

    public Movie mapRow(ResultSet rs, int i) throws SQLException {
        Movie movie = new Movie();
        movie.setId(rs.getInt("id"));
        movie.setTitle(rs.getString("title"));
        movie.setRate(rs.getDouble("rate"));
        movie.setCategory(rs.getString("category"));
        movie.setLanguage(rs.getString("language"));
        movie.setCover(rs.getString("cover"));
        movie.setReleaseDate(rs.getDate("release_date"));
        movie.setLengthOfFilm(rs.getInt("length_of_film"));
        return null;
    }
}
