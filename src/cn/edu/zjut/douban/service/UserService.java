package cn.edu.zjut.douban.service;

import cn.edu.zjut.douban.dao.UserDao;
import cn.edu.zjut.douban.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by shenao on 2015/5/19.
 */
@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    public User findUserByUserId(String userId) {
        return userDao.findById(userId);
    }
}
