package cn.edu.zjut.douban.util;

import cn.edu.zjut.douban.pojo.Comment;
import cn.edu.zjut.douban.pojo.Movie;
import cn.edu.zjut.douban.pojo.User;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by shenao on 2015/5/28.
 */
public class RecommandUtil {

    /**
     * 计算皮尔逊相似度
     * @param userComments 所有用户的电影评价
     * @param user1
     * @param user2
     * @return
     */
    public static double simPearson(
            Map<User, Map<Movie, Comment>> userComments, User user1, User user2) {
        Map<Movie, Comment> comments1 = userComments.get(user1);
        Map<Movie, Comment> comments2 = userComments.get(user2);
        //保存两个用户共同评价过的电影
        List<Movie> commonMovies = new ArrayList<Movie>();
        for (Map.Entry<Movie, Comment> entry : comments1.entrySet()) {
            Movie movie = entry.getKey();
            if (comments2.get(movie) != null) {
                commonMovies.add(movie);
            }
        }
        int size = commonMovies.size();

        if (size == 0) {
            return 0;
        }

        double sum1 = 0, sum1Sq = 0, sum2 = 0, sum2Sq = 0, pSum = 0, num = 0, den = 0;
        for (Movie movie : commonMovies) {
            double rate1 = userComments.get(user1).get(movie).getRate();
            double rate2 = userComments.get(user2).get(movie).getRate();
            sum1 += rate1;
            sum1Sq += Math.pow(rate1, 2);
            sum2 += rate2;
            sum2Sq += Math.pow(rate2, 2);
            pSum += rate1 * rate2;
        }
        num = pSum - (sum1 * sum2 / size);
        den = Math.sqrt((sum1Sq-Math.pow(sum1, 2)/size) * (sum2Sq - Math.pow(sum2, 2)/size));
        if (den == 0) {
            return 0;
        }
        return num / den;
    }

}
