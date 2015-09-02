package test;

import java.util.List;

import vo.Goods;
import dao.impl.IndexDaoImp;



public class TestCase {

	public static void main(String[] args) {
		
		IndexDaoImp in=new IndexDaoImp();
		List <Goods>list=in.findAll();
		System.out.println(list.size());
		
	}
}
