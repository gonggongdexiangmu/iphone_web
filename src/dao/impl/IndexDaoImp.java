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
			
			while(result.next()){
				int j=0;
				Goods g=new Goods();
				g.setGoods_id(result.getString("goods_id"));
				g.setGoods_name(result.getString("goods_name"));
				g.setGoods_text(result.getString("goods_text"));
				g.setCreate_time(result.getString("create_time"));
				String h=result.getString("goods_ishead");
				if("y".equals(h)){
					g.setGoods_ishead(true);
					
				}else if("n".equals(h)){
					g.setGoods_ishead(false);
				}
				g.setGoods_state(result.getString("goods_state"));
				g.setZan(result.getString("zan"));
				String labelid=result.getString("label_id");
				String[] ids=labelid.split(",");
				//根据标签id查找标签名字
				for(int i=0;i<ids.length;i++){
					labelName=labelName+" "+findLabelName(ids[0]);
					
				}
				g.setLabel_id(labelName);
				//首页图片路径处理
				List <String>list=findImageUrl(result.getString("goods_id"));
				
				g.setPohto_url(list.get(0));
				
				Goodslist.add(g);
				
				
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
			connection=JDBCTool.getConnection();
			pres = connection.prepareStatement(sql);
			pres.setString(1, id);
			ResultSet result=pres.executeQuery();
			while(result.next()){
				labelName=result.getString("label_name");
				
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return labelName;
	}
	/**
	 * 找图片
	 */
	public List findImageUrl(String goodsId) {
		String sql="select * from photo where goods_id=?";
		Connection connection=null;
		PreparedStatement pres;
		String image_url;
		List <String>list=new ArrayList<String>();
		try {
			connection=JDBCTool.getConnection();
			pres=connection.prepareCall(sql);
			pres.setString(1, goodsId);
			ResultSet result=pres.executeQuery();
			while(result.next()){
				image_url=result.getString("photo_url");
				list.add(image_url);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	/**
	 * 找视频
	 */
	public String findVedio(String goodsId) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
