package cn.edu.csu.douban.pojo;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by weigang.lu on 2016/1/23.
 */
@JsonIgnoreProperties(value = "comments")
public class Movie implements Serializable {

    private double rate;

    private int cover_x;

    private boolean is_beetle_subject;

    private String title;

    private String url;

    private boolean playable;

    private int id;

    private int cover_y;

    private boolean is_new;

    private String category;

    private String language;

    private Date releaseDate;

    private int lengthOfFilm;

    private String cover;

    private int userRate;

    private int commentId;

    private Set<Comment> comments = new HashSet<Comment>();

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public int getCover_x() {
        return cover_x;
    }

    public void setCover_x(int cover_x) {
        this.cover_x = cover_x;
    }

    public boolean isIs_beetle_subject() {
        return is_beetle_subject;
    }

    public void setIs_beetle_subject(boolean is_beetle_subject) {
        this.is_beetle_subject = is_beetle_subject;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public boolean isPlayable() {
        return playable;
    }

    public void setPlayable(boolean playable) {
        this.playable = playable;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCover_y() {
        return cover_y;
    }

    public void setCover_y(int cover_y) {
        this.cover_y = cover_y;
    }

    public boolean isIs_new() {
        return is_new;
    }

    public void setIs_new(boolean is_new) {
        this.is_new = is_new;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public int getLengthOfFilm() {
        return lengthOfFilm;
    }

    public void setLengthOfFilm(int lengthOfFilm) {
        this.lengthOfFilm = lengthOfFilm;
    }

    public Set<Comment> getComments() {
        return comments;
    }

    public void setComments(Set<Comment> comments) {
        this.comments = comments;
    }

    public int getUserRate() {
        return userRate;
    }

    public void setUserRate(int userRate) {
        this.userRate = userRate;
    }

    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof Movie)) {
            return false;
        }
        Movie movie = (Movie) obj;
        return movie.id == this.id;
    }

    @Override
    public int hashCode() {
        return id;
    }
}
