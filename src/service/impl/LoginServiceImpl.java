package service.impl;

import dao.impl.UserDaoImpl;
import service.LoginService;
import vo.User;

public class LoginServiceImpl implements LoginService{

	public User findUserByUserName(String username) {
		return new UserDaoImpl().findUserByUserName(username);
	}

	public int saveUser(User user) {
		return new UserDaoImpl().saveUser(user);
	}

}