package cn.edu.csu.douban.pojo;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

import java.io.Serializable;

/**
 * Created by weigang.lu on 2016/1/23.
 */
@JsonIgnoreProperties(value = "user")
public class Comment implements Serializable {

    private int id;

    private User user;

    private Movie movie;

    private int rate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof Comment)) {
            return false;
        }
        Comment comment = (Comment) obj;
        return comment.user.equals(this.user) &&
                comment.movie.getId() == this.movie.getId();
    }

    @Override
    public int hashCode() {
        return user.hashCode() * 17 + movie.getId();
    }
}
