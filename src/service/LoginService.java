package service;

import vo.User;

public interface LoginService {
	public User findUserByUserName(String username);
	
	public int saveUser(User user);
}
