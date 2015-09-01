package dao.impl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import tools.JDBCTool;
import vo.User;
import dao.UserDao;

public class UserDaoImpl implements UserDao{

	public User findUserByUserName(String username) {
		User user=null;
		String sql="";
		Connection connection=null;
		try {
			connection=JDBCTool.getConnection();
			PreparedStatement prepareStatement=connection.prepareStatement(sql);
			prepareStatement.setString(1, username);
			ResultSet resultSet=prepareStatement.executeQuery();
			if(resultSet.next()){
				user=new User();
				user.setName(resultSet.getString("name"));
				user.setPwd(resultSet.getString("pwd"));
				user.setLoginName(resultSet.getString("loginname"));
				user.setRole(resultSet.getString("role"));
				user.setUuid(resultSet.getString("uuid"));
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				JDBCTool.close(connection);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return user;
	}

	public int saveUser(User user) {
		String sql="";
		Connection connection=null;
		int i=0;
		try {
			connection=JDBCTool.getConnection();
			PreparedStatement prepareStatement=connection.prepareStatement(sql);
			prepareStatement.setString(1, user.getLoginName());
			prepareStatement.setString(2, user.getName());
			prepareStatement.setString(3, user.getPwd());
			prepareStatement.setString(4, user.getRole());
			prepareStatement.setString(5, user.getUuid());
			i=prepareStatement.executeUpdate();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				JDBCTool.close(connection);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return i;
	}

}
