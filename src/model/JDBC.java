package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JDBC {
	
	public static Connection connect() {
		
		String Dname="oracle.jdbc.driver.OracleDriver";
		Connection conn=null;
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		try {
			Class.forName(Dname);
			conn=DriverManager.getConnection(url, "jin", "1230");
			
		} catch (Exception e) {
			System.out.println("connect()");
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void disconnect(PreparedStatement pstmt, Connection conn) {
		try {
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			System.out.println("disconnect()");
			e.printStackTrace();
		}
	}
	
	
}
