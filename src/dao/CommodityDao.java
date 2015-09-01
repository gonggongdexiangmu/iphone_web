package dao;

import java.util.ArrayList;

import vo.Commodity;

public interface CommodityDao {
	public int saveCommodity(Commodity commodity);
	
	public Commodity findByUUIDCommodity(String uuid);
	
	public ArrayList<Commodity> findAll();
}
