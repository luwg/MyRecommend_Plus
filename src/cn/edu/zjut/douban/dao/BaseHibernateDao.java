package cn.edu.zjut.douban.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate3.HibernateTemplate;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by shenao on 2015/5/19.
 */
public class BaseHibernateDao<T, ID extends Serializable> {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    protected Class<T> entityClass;;

    public BaseHibernateDao() {
        this.entityClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
    }


    @Autowired
    private JdbcTemplate jdbcTemplate;

    public List<T> findAll() {
        String hql = " from " + entityClass.getName();
        return hibernateTemplate.find(hql);
    }

    public T findById(ID id) {
        return hibernateTemplate.get(entityClass, id);
    }

    public void update(T t) {
        hibernateTemplate.update(t);
    }

    public void save(T t) {
        hibernateTemplate.save(t);
    }

    public void batchSave(List<T> list) {
        Session session = getHibernateTemplate().getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        int count = 0;
        for (T t : list) {
            session.save(t);
            count++;
            if (count % 10000 == 0) {
                session.flush();
                session.clear();
            }
        }
        tx.commit();
        session.close();
    }

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }
}
