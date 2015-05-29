package cn.edu.zjut.douban.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by shenao on 2015/4/24.
 */

@Controller
public class HomeAction {

    @RequestMapping(value="/", method= RequestMethod.GET)
    public String showHomePage(HttpServletRequest request) {
        return "index";
    }
}
