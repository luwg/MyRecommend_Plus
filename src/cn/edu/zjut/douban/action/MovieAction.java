package cn.edu.zjut.douban.action;

import cn.edu.zjut.douban.form.MovieForm;
import cn.edu.zjut.douban.pojo.Category;
import cn.edu.zjut.douban.pojo.Comment;
import cn.edu.zjut.douban.pojo.Movie;
import cn.edu.zjut.douban.pojo.User;
import cn.edu.zjut.douban.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by shenao on 2015/5/21.
 */
@Controller
public class MovieAction {

    @Autowired
    private MovieService movieService;

    @RequestMapping(value = "/myCommentedMovies", method = RequestMethod.GET)
    public ModelAndView myCommentedMovies(HttpSession session) {
        User user = (User) session.getAttribute("user");
        List<Comment> comments = movieService.getTheCommentedMovies(user.getUserId());
        ModelAndView mv = new ModelAndView();
        mv.addObject("comments", comments);
        mv.setViewName("myCommentedMovies");
        return mv;
    }

    @RequestMapping(value = "hotMovie", method = RequestMethod.GET)
    public ModelAndView hotMovie() {
        List<Category> categories = movieService.getAllCategories();
        ModelAndView mv = new ModelAndView();
        mv.addObject("categories", categories);
        mv.setViewName("hotMovie");
        return mv;
    }

    @RequestMapping(value = "/getMovies", method = RequestMethod.GET)
    public ModelAndView getMovies(MovieForm movieForm) throws Exception {
        movieForm.setTag(new String(movieForm.getTag().getBytes("ISO-8859-1"), "utf-8"));
        List<Movie> movies = movieService.getMovies(movieForm);
        ModelAndView mv = new ModelAndView();
        mv.addObject("movies", movies);
        mv.setViewName("movies");
        return mv;
    }

    /**
     * 为当前用户推荐十部电影
     * @return
     */
    @RequestMapping(value = "recommandMovie", method = RequestMethod.GET)
    public ModelAndView recommandMovie(HttpSession session) {
        User user = (User) session.getAttribute("user");
        List<Movie> recommandMovie = movieService.getRecommandMovies(user.getUserId());
        ModelAndView mv = new ModelAndView();
        mv.addObject("movies", recommandMovie);
        mv.setViewName("recommandMovie");
        return mv;
    }
}
