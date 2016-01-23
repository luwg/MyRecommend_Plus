package cn.edu.csu.douban.action;

import cn.edu.csu.douban.form.MovieForm;
import cn.edu.csu.douban.form.PageForm;
import cn.edu.csu.douban.pojo.Category;
import cn.edu.csu.douban.pojo.Comment;
import cn.edu.csu.douban.pojo.Movie;
import cn.edu.csu.douban.pojo.User;
import cn.edu.csu.douban.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by weigang.lu on 2016/1/23.
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

    @RequestMapping(value = "/hotMovie", method = RequestMethod.GET)
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
    @RequestMapping(value = "/recommandMovie", method = RequestMethod.GET)
    public ModelAndView recommandMovie(HttpSession session) {
        User user = (User) session.getAttribute("user");
        List<Movie> recommandMovie = movieService.getRecommandMovies(user.getUserId());
        ModelAndView mv = new ModelAndView();
        mv.addObject("movies", recommandMovie);
        mv.setViewName("recommendMovie");
        return mv;
    }

    @ResponseBody
    @RequestMapping(value = "/getMovieList", method = RequestMethod.GET)
    public Map<String, Object> getComments(PageForm pageForm) {
        List<Movie> movies = movieService.getMoviesWithPagination(pageForm);
        long totalCount = movieService.getMovieCount();
        Map<String, Object> jsonObj = new HashMap<String, Object>();
        jsonObj.put("rows", movies);
        jsonObj.put("total", totalCount);
        return jsonObj;
    }

    @ResponseBody
    @RequestMapping(value = "/updateMovie", method = RequestMethod.POST)
    public boolean updateMovie(Movie movie) {
        movieService.updateMovie(movie);
        return true;
    }

    @RequestMapping(value = "/movieManage", method = RequestMethod.GET)
    public String movieManage() {
        return "movieManage";
    }

    @ResponseBody
    @RequestMapping(value = "/deleteMovie", method = RequestMethod.GET)
    public boolean deleteMovie(String id) {
        movieService.deleteMovie(Integer.parseInt(id));
        return true;
    }

    @ResponseBody
    @RequestMapping(value = "/getMovie", method = RequestMethod.GET)
    public Movie getMovie(String id) {
        int movieId = Integer.parseInt(id);
        return movieService.getMovieById(movieId);
    }

    @ResponseBody
    @RequestMapping(value = "/evaluateMovie", method = RequestMethod.POST)
    public boolean evaluateMovie(Comment comment, HttpSession session) {
        User user = (User) session.getAttribute("user");
        comment.setUser(user);
        movieService.addComment(comment);
        return true;
    }
}
