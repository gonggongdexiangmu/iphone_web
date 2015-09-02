package service;

import vo.Goods;

/**
 * 主页业务接口---物品显示
 *
 */
public interface IndexService {

	Goods findAllGoods();
	
}
