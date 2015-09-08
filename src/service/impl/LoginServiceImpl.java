package service.impl;

import dao.impl.UserDaoImpl;
import service.LoginService;
import vo.User;

public class LoginServiceImpl implements LoginService{

	static UserDaoImpl udi=new UserDaoImpl();
	/**
	 * ��¼���
	 */
	public String findUserByUserName(String username,String pwd) {
		if(username==null){
			new Exception("��¼��Ϊ��");
		}
		if(pwd==null){
			new Exception("��¼����Ϊ��");
		}
		
		User user=udi.findUserByUserName(username);
		if(user==null){
			
			return"0";
		}else{
			if(!user.getUserip_pwd().equals(pwd)){
				return"1";
				
			}
		}
		return "2";
		
		
		
	}

	public int saveUser(User user) {
		return new UserDaoImpl().saveUser(user);
	}

	public User finUser(String username) {
		
		User user=udi.findUserByUserName(username);
		return user;
	}

}