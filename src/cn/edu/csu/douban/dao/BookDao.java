package cn.edu.csu.douban.dao;

import cn.edu.csu.douban.pojo.Book;
import cn.edu.csu.douban.pojo.Book;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by weigang.lu on 2016/1/23.
 */
@Repository
public class BookDao extends BaseHibernateDao<Book, Integer> {

    public List<Book> findRecommendBookByUserId(String userId) {

        String hql = " select b from Book b, BookRecommend br "
                   + " where b.id = br.bookId "
                   + " and br.userId = ? ";

        List<Book> books = getHibernateTemplate().find(hql, userId);
        return books;
    }
}
