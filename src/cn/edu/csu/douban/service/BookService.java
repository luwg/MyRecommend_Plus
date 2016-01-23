package cn.edu.csu.douban.service;

import cn.edu.csu.douban.dao.BookDao;
import cn.edu.csu.douban.pojo.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by weigang.lu on 2016/1/23.
 */
@Service
public class BookService {

    @Autowired
    private BookDao bookDao;

    public List<Book> getRecommendBook(String userId) {
        return bookDao.findRecommendBookByUserId(userId);
    }
}
