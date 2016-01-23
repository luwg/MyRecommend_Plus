package cn.edu.csu.douban.dao;

import cn.edu.csu.douban.pojo.Category;
import cn.edu.csu.douban.pojo.Category;
import org.springframework.stereotype.Repository;

/**
 * Created by weigang.lu on 2016/1/23.
 */
@Repository
public class CategoryDao extends BaseHibernateDao<Category, Integer> {

    public Category findByName(String name) {
        String hql = " from Category c where c.name=? ";
        return (Category) getHibernateTemplate().find(hql, name).get(0);
    }
}
