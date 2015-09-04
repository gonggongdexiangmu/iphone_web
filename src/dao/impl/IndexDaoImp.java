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
	int pageSize=5;;
	public List findAll(int page,String kind) {
		if(page==0){
			page=1;
		}
		String sql="select * from goods where goods_state=? limit ?,?";
		Connection connection=null;
		String labelName=null;
		List <Goods>Goodslist=new ArrayList<Goods>();
		
		
		int begin=pageSize*(page-1);//0,5,
		
		
		try {
			connection=JDBCTool.getConnection();
			PreparedStatement pres=connection.prepareStatement(sql);
			pres.setString(1, kind);
			pres.setInt(2, begin);
			pres.setInt(3, pageSize);
			ResultSet result=pres.executeQuery();
			
			while(result.next()){
				int j=0;
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
				g.setLabel_id(labelName);
				//首页图片路径处理
				List <String>list=findImageUrl(result.getString("goods_id"));
				if(list.size()==0){//说明商品没有图片--做异常处理
					
				}else{
					
					g.setPohto_url(list.get(0));
				}
				
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
			pres=connection.prepareStatement(sql);
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
	/**
	 * 计算最大页
	 */
	public int findCount(String kind) {
		String sql="select count(*) from goods where goods_state=?";
		Connection connection=null;
		PreparedStatement pres;
		ResultSet result;
		int totleSize = 0;
		int pages;
		try {
			connection=JDBCTool.getConnection();
			pres=connection.prepareStatement(sql);
			pres.setString(1, kind);
			result=pres.executeQuery();
			result.next();
			totleSize=result.getInt(1);
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		if(totleSize%pageSize==0){
			return totleSize/pageSize;
			
		}else{
			return totleSize/pageSize+1;
		}
		
		
	}
	
	

}
