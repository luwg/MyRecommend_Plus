package cn.edu.csu.douban.pojo;

import java.io.Serializable;

/**
 * Created by weigang.lu on 2016/1/23.
 */
public class Category implements Serializable {

    private int id;

    private String name;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
