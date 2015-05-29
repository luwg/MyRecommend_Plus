package cn.edu.zjut.douban.dao;

import cn.edu.zjut.douban.pojo.User;
import org.springframework.stereotype.Repository;

/**
 * Created by shenao on 2015/5/19.
 */
@Repository
public class UserDao extends BaseHibernateDao<User, String> {
}
