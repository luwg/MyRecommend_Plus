package cn.edu.zjut.douban.pojo;

import java.io.Serializable;

/**
 * Created by shenao on 2015/5/19.
 */
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
