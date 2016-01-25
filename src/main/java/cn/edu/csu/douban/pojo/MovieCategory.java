package cn.edu.csu.douban.pojo;

/**
 * Created by weigang.lu on 2016/1/23.
 */
public class MovieCategory {

    private int id;

    private Movie movie;

    private Category category;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
