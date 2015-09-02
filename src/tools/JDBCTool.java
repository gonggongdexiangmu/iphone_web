package tools;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
/**
 * 
 * JDBC开启数据库连接
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
	 * 关闭数据库连接
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
//		//读取配置文件，初始化数据连接参数
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
//	//连接数据库的方法
//public static Connection getconnection(){
//	
//	Connection conn=null;
//	try {
//		
//		Class.forName(driver);//注册驱动
//		conn=DriverManager.getConnection(url,user,pwd);	
//	} catch (Exception e) {
//		e.printStackTrace();
//		throw new RuntimeException("没有连接上",e);
//	}
//	return conn;
//}
////在DBUtil类体重添加方法
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
