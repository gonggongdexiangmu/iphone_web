package dao.impl;



import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import tools.JDBCTool;
import vo.Goods;
import dao.IndexDao;

public class IndexDaoImp implements IndexDao{

	public List findAll() {
		String sql="select * from goods";
		Connection connection=null;
		String labelName=null;
		List <Goods>Goodslist=new ArrayList<Goods>();
		 
		try {
			connection=JDBCTool.getConnection();
			PreparedStatement pres=connection.prepareStatement(sql);
			ResultSet result=pres.executeQuery();
			if(result.next()){
				Goods g=new Goods();
				g.setGoods_id(result.getString("goods_id"));
				g.setGoods_name(result.getString("goods_name"));
				g.setGoods_text(result.getString("goods_text"));
				g.setCreate_time(result.getString("create_time"));
				g.setGoods_ishead(result.getString("goods_ishead"));
				g.setGoods_state(result.getString("goods_state"));
				g.setZan(result.getString("zan"));
				String labelid=result.getString("label_id");
				String[] ids=labelid.split(",");
				//根据标签id查找标签名字
				for(int i=0;i<ids.length;i++){
					labelName=labelName+" "+findLabelName(ids[0]);
					
				}
				Goodslist.add(g);
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
		}
		return Goodslist;
	}
	/**
	 * 找标签
	 */
	public String findLabelName(String id) {
		String sql="select l.label_name from goods g left join label l on g.label_id=l.label_id where g.label_id=?";
		String labelName=null;
		Connection connection=null;
		PreparedStatement pres;
		try {
			pres = connection.prepareStatement(sql);
			pres.setString(1, id);
			try {
				connection=JDBCTool.getConnection();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			ResultSet result=pres.executeQuery();
			if(result.next()){
				labelName=result.getString("label_name");
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
		}
		return labelName;
	}
	

}
