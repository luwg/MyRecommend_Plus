package cn.edu.csu.douban.service;

import cn.edu.csu.douban.dao.CommentDao;
import cn.edu.csu.douban.dao.CommentDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by weigang.lu on 2016/1/23.
 */
@Service
public class CommentService {

    @Autowired
    private CommentDao commentDao;

    public void deleteComment(int id) {
        commentDao.deleteByCommentId(id);
    }
}
