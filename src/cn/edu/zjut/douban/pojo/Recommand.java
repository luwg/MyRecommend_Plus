package cn.edu.zjut.douban.pojo;

import java.io.Serializable;

/**
 * Created by shenao on 2015/5/29.
 */
public class Recommand implements Serializable, Comparable<Recommand> {

    private int id;

    private User user;

    private Movie movie;

    private double rate;

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

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    @Override
    public int compareTo(Recommand o) {
        return Double.compare(o.getRate(), rate);
    }
}
