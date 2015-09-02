package tools;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
/**
 * 
 * JDBC�������ݿ�����
 *
 */
public class JDBCTool {
	public static Connection getConnection() throws IOException, ClassNotFoundException, SQLException{
		Properties properties=new Properties();
		
		properties.load(JDBCTool.class.getClassLoader().getResourceAsStream("db.properties"));
		Class.forName(properties.getProperty("driver"));
		Connection connection=DriverManager.getConnection(properties.getProperty("url"),properties.getProperty("username"),
				properties.getProperty("pwd"));
		System.out.println(connection);
		return connection;
	}
	/**
	 * �ر����ݿ�����
	 * 
	 */
	public static void close(Connection connection) throws SQLException{
		if(connection!=null){
			connection.close();
		}
	}
	
	
	
	
//	private static String driver;
//	private static String url;
//	private static String user;
//	private static String pwd;
//
//	static{
//		//��ȡ�����ļ�����ʼ���������Ӳ���
//		try {
//			String file="db.Properties";		 
//			Properties map=new Properties();
//			InputStream in=JDBCTool.class.getClassLoader().getResourceAsStream(file);
//	
//			//map.load(DBUtil.class.getResourceAsStream("db.Properties"));
//			map.load(in);
//			in.close();
//			driver=map.getProperty("driver");
//			url=map.getProperty("url");
//			user=map.getProperty("user");
//			pwd=map.getProperty("pwd");	
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//	//�������ݿ�ķ���
//public static Connection getconnection(){
//	
//	Connection conn=null;
//	try {
//		
//		Class.forName(driver);//ע������
//		conn=DriverManager.getConnection(url,user,pwd);	
//	} catch (Exception e) {
//		e.printStackTrace();
//		throw new RuntimeException("û��������",e);
//	}
//	return conn;
//}
////��DBUtil��������ӷ���
//public static void close(Connection conn){
//	if(conn!=null){
//		try {
//			conn.close();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//}
}
