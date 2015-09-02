package test;

import java.util.List;

import dao.impl.IndexDaoImp;



public class TestCase {

	public static void main(String[] args) {
		
		IndexDaoImp in=new IndexDaoImp();
		List list=in.findAll();
		System.out.println(list);
	}
}
