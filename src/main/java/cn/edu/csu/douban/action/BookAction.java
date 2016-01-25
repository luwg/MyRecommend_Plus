package cn.edu.csu.douban.action;

import cn.edu.csu.douban.service.BookService;
import cn.edu.csu.douban.pojo.Book;
import cn.edu.csu.douban.pojo.User;
import cn.edu.csu.douban.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by weigang.lu on 2016/1/23.
 */
@Controller
public class BookAction {

    @Autowired
    private BookService bookService;

    @RequestMapping(value = "/getRecommentBook", method = RequestMethod.GET)
    public ModelAndView getRecommentBook(HttpSession session) {
        User user = (User) session.getAttribute("user");
        List<Book> books = bookService.getRecommendBook(user.getUserId());
        ModelAndView mv = new ModelAndView();
        mv.addObject("books", books);
        mv.setViewName("recommendBook");
        return mv;
    }
}
