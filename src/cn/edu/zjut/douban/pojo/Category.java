package cn.edu.zjut.douban.pojo;

import java.io.Serializable;

/**
 * Created by shenao on 15/5/30.
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
