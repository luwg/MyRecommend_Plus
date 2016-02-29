package cn.edu.csu.douban.pojo;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by weigang.lu on 2016/1/23.
 */
@JsonIgnoreProperties(value = "comments")
public class User implements Serializable {

    private int userId;

    private String name;

    private String password;

    private String favorite;

    private String password_validate;
    private Set<Comment> comments = new HashSet<Comment>();

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
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
        return user.userId==this.userId;
    }

    @Override
    public int hashCode() {
        return this.userId;
    }

    public String getFavorite() {
        return favorite;
    }

    public void setFavorite(String favorite) {
        this.favorite = favorite;
    }

    public String getPassword_validate() {
        return password_validate;
    }

    public void setPassword_validate(String password_validate) {
        this.password_validate = password_validate;
    }
}
