package cn.edu.csu.douban.service;

import cn.edu.csu.douban.dao.UserDao;
import cn.edu.csu.douban.form.PageForm;
import cn.edu.csu.douban.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by weigang.lu on 2016/1/23.
 */
@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    public User findUserByUserId(int userId) {
        return userDao.findById(userId);
        //return userDao.findById(userId);
    }

    public void updateUser(User user) {
        User dbUser = null;
        if ((dbUser = userDao.findById(user.getUserId())) != null) {
            userDao.update(user);
        } else {
            userDao.save(user);
        }

    }

    public List<User> findUserWithPagination(PageForm pageForm) {
        return userDao.findUserWithPagination(pageForm);
    }

    public int getUserCount() {
        return userDao.getQueryCount();
    }

    public void deleteUser(User user) {
        userDao.deleteByUserId(user.getUserId());
    }
}
