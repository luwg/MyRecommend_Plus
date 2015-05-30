package cn.edu.zjut.douban.dao;

import cn.edu.zjut.douban.pojo.Category;
import org.springframework.stereotype.Repository;

/**
 * Created by shenao on 15/5/30.
 */
@Repository
public class CategoryDao extends BaseHibernateDao<Category, Integer> {

    public Category findByName(String name) {
        String hql = " from Category c where c.name=? ";
        return (Category) getHibernateTemplate().find(hql, name).get(0);
    }
}
