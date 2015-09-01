package dao;

import vo.User;

public interface UserDao {
	public User findUserByUserName(String username);
	
	public int saveUser(User user);
}
