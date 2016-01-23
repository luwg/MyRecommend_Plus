package cn.edu.csu.douban.dao;

import cn.edu.csu.douban.pojo.Recommand;
import cn.edu.csu.douban.pojo.Movie;
import cn.edu.csu.douban.pojo.Recommand;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by weigang.lu on 2016/1/23.
 */
@Repository
public class RecommandDao extends BaseHibernateDao<Recommand, Integer> {

    public List<Recommand> findRecommandMovieByUserId(String userId) {
        List<Recommand> recommands = new ArrayList<Recommand>();

        String hql = " select r, m from Recommand r "
                   + " join r.movie m "
                   + " where r.user.userId=? "
                   + " order by r.rate desc ";

        @SuppressWarnings("unchecked")
        List<Object[]> result = getHibernateTemplate().find(hql, userId);
        for (Object[] obj : result) {
            Recommand recommand = (Recommand) obj[0];
            Movie movie = (Movie) obj[1];
            recommand.setMovie(movie);
            recommands.add(recommand);
        }
        return recommands;
    }

}
