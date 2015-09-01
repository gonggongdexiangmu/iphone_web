package tools;

import java.io.IOException;
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
		properties.load(JDBCTool.class.getClass().getResourceAsStream("connection.properties"));
		Class.forName(properties.getProperty("driver"));
		Connection connection=DriverManager.getConnection(properties.getProperty("url"),properties.getProperty("username"),
				properties.getProperty("pwd"));
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
}
