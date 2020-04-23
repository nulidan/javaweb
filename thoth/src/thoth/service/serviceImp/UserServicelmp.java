package thoth.service.serviceImp;

import thoth.bean.UserBean;
import thoth.dao.UserDao;
import thoth.dao.daoImp.UserDaolmp;
import thoth.service.UserService;

public class UserServicelmp implements UserService{
    private UserDao userDao=new UserDaolmp();
	public UserBean login(String phone, String pass) {
		UserBean user =userDao.login(phone, pass);
		return user;
	}

}
