package cn.edu.zjut.douban.test;

import cn.edu.zjut.douban.dao.MovieDao;
import cn.edu.zjut.douban.dao.RecommandDao;
import cn.edu.zjut.douban.pojo.Comment;
import cn.edu.zjut.douban.pojo.Movie;
import cn.edu.zjut.douban.pojo.Recommand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.net.URL;
import java.util.Collections;
import java.util.List;
import java.util.Set;

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

    @Test
    public void test1() {
        List<Comment> commentList = movieDao.findCommentsByUserId("103172455");
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

}
