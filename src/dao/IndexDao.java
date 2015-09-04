package dao;

import java.util.List;

import vo.Goods;

/**
 * 
 *
 */
public interface IndexDao {

	List findAll(int page,String kind);//找商品
	String findLabelName(String id);//找标签
	List findImageUrl(String goodsId);//找到图片路径
	String findVedio(String goodsId);//找视频
	int findCount(String kind);//计算最大页
	
}
