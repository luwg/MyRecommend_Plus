package cn.edu.csu.douban.dao;

import cn.edu.csu.douban.form.PageForm;
import cn.edu.csu.douban.pojo.User;
import org.hibernate.Query;
import org.hibernate.classic.Session;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by weigang.lu on 2016/1/23.
 */
@Repository
public class UserDao extends BaseHibernateDao<User, String> {

    /**
     * 分页查询用户数据
     * @param pageForm
     * @return
     */
    public List<User> findUserWithPagination(PageForm pageForm) {
        String hql = " from User u ";
        Session session = getHibernateTemplate().getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        query.setFirstResult(pageForm.getFirstNum());
        query.setMaxResults(pageForm.getRows());
        List result = query.list();
        session.close();
        return result;
    }

    public int getQueryCount() {
        String hql = " select count(*) from User u ";
        Session session = getHibernateTemplate().getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        int count = new Integer(query.uniqueResult().toString()).intValue();
        session.close();
        return count;
    }

    public void deleteByUserId(String userId) {
        User user = findById(userId);
        delete(user);
    }
}
