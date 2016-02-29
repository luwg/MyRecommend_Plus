package cn.edu.csu.douban.form;

/**
 * Created by weigang.lu on 2016/1/23.
 */
public class PageForm {

    private int userId;

    private int movieId;

    private int rows = 10; //每页显示多少条数据，默认显示10条

    private int page = 1;//当前页数

    /**
     * 获取第一条数据的索引
     * @return
     */
    public int getFirstNum() {
        return (page - 1) * rows;
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }


    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
