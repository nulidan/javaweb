package thoth.service;

import thoth.bean.UserBean;

public interface UserService {
	/**
	 * 查询用户信息
	 * @param phone
	 * @param pass
	 * @return
	 */
	public  UserBean login(String phone, String pass);
}

