package thoth.dao;

import thoth.bean.UserBean;

public  interface UserDao {
	public  UserBean login(String phone, String pass);
}