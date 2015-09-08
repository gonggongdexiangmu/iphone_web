package service;

import vo.User;

public interface LoginService {
	public String findUserByUserName(String username,String pwd);
	public User finUser(String username);
	public int saveUser(User user);
}
