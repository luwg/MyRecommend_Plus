package cn.edu.zjut.douban.action;

import cn.edu.zjut.douban.pojo.User;
import cn.edu.zjut.douban.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by shenao on 2015/4/24.
 */
@Controller
public class LoginAction {

    @Autowired
    private UserService userService;

    @RequestMapping("/loginPage")
    public String redirectLoginPage() {
        return "/login";
    }

    @RequestMapping(value = "/loginAction", method = RequestMethod.POST)
    public ModelAndView loign(User user, HttpServletRequest request, HttpSession session) {
        User dbUser = userService.findUserByUserId(user.getUserId());
        ModelAndView mv = new ModelAndView();
        if (loginSuccess(dbUser, user)) {
            session.setAttribute("user", dbUser);
            mv.setViewName("redirect:/");
        } else {
            mv.addObject("login_msg", "用户名或者密码错误");
            mv.setViewName("login");
        }
        return mv;
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.setAttribute("user", null);
        return "redirect:/loginPage";
    }

    private boolean loginSuccess(User dbUser, User user) {
        return dbUser != null && dbUser.getPassword().equals(user.getPassword());
    }

}
