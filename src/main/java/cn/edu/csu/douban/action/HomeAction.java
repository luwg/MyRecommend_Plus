package cn.edu.csu.douban.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by weigang.lu on 2016/1/23.
 */

@Controller
public class HomeAction {

    @RequestMapping(value="/", method= RequestMethod.GET)
    public String showHomePage(HttpServletRequest request) {
        return "index";
    }
}
