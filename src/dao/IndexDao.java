package dao;

import java.util.List;

import vo.Goods;

/**
 * 
 *
 */
public interface IndexDao {

	List findAll(int page,String kind);//����Ʒ
	String findLabelName(String id);//�ұ�ǩ
	List findImageUrl(String goodsId);//�ҵ�ͼƬ·��
	String findVedio(String goodsId);//����Ƶ
	int findCount(String kind);//�������ҳ
	
}
