package cn.edu.csu.douban.dao;

import cn.edu.csu.douban.pojo.Comment;
import org.springframework.stereotype.Repository;

/**
 * Created by weigang.lu on 2016/1/23.
 */
@Repository
public class CommentDao extends BaseHibernateDao<Comment, Integer> {

    public void deleteByCommentId(int commentId) {
        Comment comment = findById(commentId);
        delete(comment);
    }
}
