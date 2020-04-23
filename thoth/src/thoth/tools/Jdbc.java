package thoth.tools;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class Jdbc {
	private static Jdbc jdbc;
		private static String driver;
		private static String url;
		private static String user;
		private static String password;
		
		public Jdbc(){
			Properties p = new Properties();
			try{
				//���������ļ�
				p.load(Jdbc.class.getClassLoader().getResourceAsStream("dbthoth.properties"));
				//��ȡֵ
				driver = p.getProperty("driver");
				url = p.getProperty("url");
				user = p.getProperty("user");
				password = p.getProperty("password");
			} catch(IOException e1){
				e1.printStackTrace();
			}
		}
		public static Jdbc getJdbc(){
			if(jdbc == null){
				jdbc = new Jdbc();
			}
			return jdbc;
	
		}
		public Connection getConnection() {
			Connection conn = null;
			try {
				//��������
				Class.forName(driver);
				//�������ݿ�
				conn = DriverManager.getConnection(url, user, password);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return conn;
		}
		//�ͷ���Դ
		public void close(Connection conn,PreparedStatement ptt,ResultSet ret) {
			if(ret != null) {
				try {
					ret.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(ptt != null) {
				try {
					ptt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
}
