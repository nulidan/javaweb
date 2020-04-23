package thoth.dao.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import thoth.bean.UserBean;
import thoth.dao.UserDao;
import thoth.tools.Jdbc;

public class UserDaolmp implements UserDao {
	// 登录
	public UserBean login(String phone, String pass) {
		//获取jdbc连接
		Connection conn =Jdbc.getJdbc().getConnection();
		//要传入参数的值用问号?表示
		String sql = "SELECT * FROM yh WHERE phone =? AND password = ? and state = ?" ;
		//定义2个对象
		PreparedStatement ptt = null;
		ResultSet ret = null;
		UserBean user = null;
		try {
			//获取执行SQL语句的PreparedStatement对象
			ptt = conn.prepareStatement(sql);
			//传入参数
			ptt.setString(1, phone);
			ptt.setString(2, pass);
			ptt.setInt(3, 1);
			//执行sql语句,结果集用ret对象接收
			ret = ptt.executeQuery();
			if(ret.next()) {
				user = new UserBean();
				//将查询结果赋值给user
				user.setUserPhone(ret.getString("phone"));
			    user.setUserPwd(ret.getString("password"));
			    user.setUserState(ret.getString("state"));
			    
			    user.setUserName(ret.getString("name"));
			    
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			Jdbc.getJdbc().close(conn, ptt, ret);
		}
		return user;
	}
}
