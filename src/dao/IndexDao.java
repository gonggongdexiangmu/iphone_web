package dao;

import java.util.List;

import vo.Goods;

/**
 * 
 *
 */
public interface IndexDao {

	List findAll();//����Ʒ
	String findLabelName(String id);//�ұ�ǩ
}
