package cn.edu.csu.douban.action;

import cn.edu.csu.douban.form.PageForm;
import cn.edu.csu.douban.pojo.Comment;
import cn.edu.csu.douban.pojo.Movie;
import cn.edu.csu.douban.pojo.User;
import cn.edu.csu.douban.service.CommentService;
import cn.edu.csu.douban.service.MovieService;
import cn.edu.csu.douban.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by weigang.lu on 2016/1/23.
 */
@Controller
@RequestMapping(value = "/user")
public class UserAction {

    @Autowired
    private UserService userService;

    @Autowired
    private MovieService movieService;

    @Autowired
    private CommentService commentService;


    @RequestMapping(value = "/userManage", method = RequestMethod.GET)
    public String userManage() {
        return "userManage";
    }

    @ResponseBody
    @RequestMapping(value = "/getUserInfo", method = RequestMethod.GET)
    public Map<String, Object> getUserInfo(PageForm pageForm) {
        List<User> users = userService.findUserWithPagination(pageForm);
        int totalCount = userService.getUserCount();
        Map<String, Object> jsonObj = new HashMap<String, Object>();
        jsonObj.put("rows", users);
        jsonObj.put("total", totalCount);
        return jsonObj;
    }

    @ResponseBody
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public boolean save(User user) {
        userService.updateUser(user);
        return true;
    }

    @ResponseBody
    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public boolean delete(User user) {
        userService.deleteUser(user);
        return true;
    }

    @ResponseBody
    @RequestMapping(value = "/getComments", method = RequestMethod.GET)
    public Map<String, Object> getComments(PageForm pageForm) {
        List<Comment> comments = movieService.getCommentsByUserIdWithPagination(pageForm);
        long totalCount = movieService.getCommentsCount(pageForm);
        Map<String, Object> jsonObj = new HashMap<String, Object>();
        jsonObj.put("rows", parseComments(comments));
        jsonObj.put("total", totalCount);
        return jsonObj;
    }

    @ResponseBody
    @RequestMapping(value = "/deleteComment", method = RequestMethod.GET)
    public boolean deleteComment(String id) {
        int commentId = Integer.parseInt(id);
        commentService.deleteComment(commentId);
        return true;
    }

    private List<Movie> parseComments(List<Comment> comments) {
        List<Movie> movies = new ArrayList<Movie>();
        for (Comment comment : comments) {
            Movie movie = comment.getMovie();
            movie.setUserRate(comment.getRate());
            movie.setCommentId(comment.getId());
            movies.add(movie);
        }
        return movies;
    }
}
