package dao.impl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import tools.JDBCTool;
import vo.Commodity;
import vo.User;
import dao.CommodityDao;

public class CommodityDaoImpl implements CommodityDao{

	public int saveCommodity(Commodity commodity) {
		String sql="";
		Connection connection=null;
		int i=0;
		try {
			connection=JDBCTool.getConnection();
			PreparedStatement prepareStatement=connection.prepareStatement(sql);
			prepareStatement.setString(1, commodity.getUuid());
			prepareStatement.setString(2, commodity.getUuid());
			prepareStatement.setString(3, commodity.getUuid());
			prepareStatement.setString(4, commodity.getUuid());
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

	public Commodity findByUUIDCommodity(String uuid) {
		Commodity commodity=null;
		String sql="";
		Connection connection=null;
		try {
			connection=JDBCTool.getConnection();
			PreparedStatement prepareStatement=connection.prepareStatement(sql);
			prepareStatement.setString(1, uuid);
			ResultSet resultSet=prepareStatement.executeQuery();
			if(resultSet.next()){
				commodity=new Commodity();
				commodity.setCommodityName(resultSet.getString("commodityname"));
				commodity.setUuid(resultSet.getString("uuid"));
				commodity.setIntroduction(resultSet.getString("introduction"));
				commodity.setPicturePath(resultSet.getString("picturepath"));
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
		return commodity;
	}

	public ArrayList<Commodity> findAll() {
		ArrayList<Commodity> commodities=new ArrayList<Commodity>();
		String sql="";
		Connection connection=null;
		try {
			connection=JDBCTool.getConnection();
			PreparedStatement prepareStatement=connection.prepareStatement(sql);
			ResultSet resultSet=prepareStatement.executeQuery();
			while(resultSet.next()){
				Commodity commodity=new Commodity();
				commodity.setCommodityName(resultSet.getString("commodityname"));
				commodity.setUuid(resultSet.getString("uuid"));
				commodity.setIntroduction(resultSet.getString("introduction"));
				commodity.setPicturePath(resultSet.getString("picturepath"));
				commodities.add(commodity);
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
		return commodities;
	}
	
}
