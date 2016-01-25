package cn.edu.csu.douban.model;

import cn.edu.csu.douban.util.DataBaseUtil;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import org.apache.mahout.cf.taste.impl.model.jdbc.MySQLJDBCDataModel;
import org.apache.mahout.cf.taste.model.JDBCDataModel;

public class MyDataModel {

	public static JDBCDataModel myDataModel() {
		MysqlDataSource dataSource = new MysqlDataSource();
		JDBCDataModel dataModel = null;
		try {
			dataSource.setServerName("127.0.0.1");
			dataSource.setUser("root");
			dataSource.setPassword("916568");
			dataSource.setDatabaseName("douban_recommand");
			// use JNDI
			dataModel = new MySQLJDBCDataModel(DataBaseUtil.getDataSource(),"t_active_user_comment", "user_id", "movie_Id","rate","144");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return dataModel;
	}

}
