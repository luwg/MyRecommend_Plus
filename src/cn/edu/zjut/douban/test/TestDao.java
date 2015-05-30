package cn.edu.zjut.douban.test;

import cn.edu.zjut.douban.dao.CategoryDao;
import cn.edu.zjut.douban.dao.MovieCategoryDao;
import cn.edu.zjut.douban.dao.MovieDao;
import cn.edu.zjut.douban.dao.RecommandDao;
import cn.edu.zjut.douban.form.MovieForm;
import cn.edu.zjut.douban.pojo.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.net.URL;
import java.net.URLDecoder;
import java.util.*;

/**
 * Created by shenao on 2015/5/21.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:application-*.xml")
public class TestDao {

    @Autowired
    private MovieDao movieDao;

    @Autowired
    private RecommandDao recommandDao;

    @Autowired
    private CategoryDao categoryDao;

    @Autowired
    private MovieCategoryDao movieCategoryDao;

    @Test
    public void test1() {
        List<Comment> commentList = movieDao.findCommentsByUserId("103172455");
    }

    @Test
    public void testMovie() {
        MovieForm movieForm = new MovieForm();
        movieForm.setTag("剧情");
        movieForm.setSort("release_date");
        List<Movie> movies = movieDao.findMoviesByCondition(movieForm);
        for (Movie movie : movies) {
            System.out.println(movie.getTitle());
        }
    }

    @Test
    public void test2() throws Exception {
        List<Movie> movies = movieDao.findAll();
        byte[] buff = new byte[1024 * 20];
        int len = -1;
        int count = 0;
        for (Movie movie : movies) {
            System.out.println(++count);
            URL url = new URL(movie.getCover());
            BufferedInputStream bis = new BufferedInputStream(url.openStream());
            String fileName = movie.getCover().substring(movie.getCover().lastIndexOf("/") + 1);
            BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream("web/resources/images/movie_cover/" + fileName));
            while ((len = bis.read(buff)) != -1) {
                bos.write(buff, 0, len);
            }
            bis.close();
            bos.close();
        }
    }

    @Test
    public void updateCover() {
        List<Movie> movies = movieDao.findAll();
        for (Movie movie : movies) {
            movie.setCover(movie.getCover().substring(movie.getCover().lastIndexOf("/") + 1));
            movieDao.update(movie);
        }
    }

    @Test
    public void test4() {
        long begin = System.currentTimeMillis();
        List<Recommand> recommands = recommandDao.findRecommandMovieByUserId("1891911");
        for (Recommand recommand : recommands) {
            System.out.println(recommand.getMovie().getTitle() + ":" + recommand.getRate());
        }
        long end = System.currentTimeMillis();
        System.out.println(end - begin);
    }


    @Test
    public void extractMovieCategory() {
        List<Movie> movies = movieDao.findAll();
        Set<String> categorys = new HashSet<String>();
        for (Movie movie : movies) {
            String[] data = movie.getCategory().split("/");
            for (String category : data) {
                if (!category.isEmpty()) {
                    categorys.add(category);
                }

            }
        }
        for (String name : categorys) {
            Category category = new Category();
            category.setName(name);
            categoryDao.save(category);
        }
    }

    @Test
    public void insertMovieCategoryRelation() {
        List<Movie> movies = movieDao.findAll();
        for (Movie movie : movies) {
            String[] names = movie.getCategory().split("/");
            for (String name : names) {
                if (!name.isEmpty()) {
                    MovieCategory movieCategory = new MovieCategory();
                    Category category = categoryDao.findByName(name);
                    movieCategory.setMovie(movie);
                    movieCategory.setCategory(category);
                    movieCategoryDao.save(movieCategory);
                }
            }
        }
    }

    @Test
    public void testEncode() throws Exception {
        String str = "%E6%AD%A6%E4%BE%A0";
        System.out.println(URLDecoder.decode(str, "GBK"));
    }

}
