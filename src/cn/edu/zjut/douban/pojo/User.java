package cn.edu.zjut.douban.pojo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by shenao on 2015/5/19.
 */
public class User implements Serializable {

    private String userId;

    private String name;

    private String password;

    private Set<Comment> comments = new HashSet<Comment>();

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Set<Comment> getComments() {
        return comments;
    }

    public void setComments(Set<Comment> comments) {
        this.comments = comments;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof User)) {
            return false;
        }
        User user = (User) obj;
        return user.userId.equals(this.userId);
    }

    @Override
    public int hashCode() {
        return this.userId.hashCode();
    }
}
