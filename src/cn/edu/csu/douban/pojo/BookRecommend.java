package cn.edu.csu.douban.pojo;

/**
 * Created by weigang.lu on 2016/1/23.
 */
public class BookRecommend {

    private int id;

    private String userId;

    private int bookId;

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof BookRecommend)) {
            return false;
        }
        BookRecommend bookRecommend = (BookRecommend) obj;
        return bookRecommend.userId.equals(userId) &&
                bookRecommend.bookId == bookId;
    }

    @Override
    public int hashCode() {
        return userId.hashCode() + bookId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }
}
