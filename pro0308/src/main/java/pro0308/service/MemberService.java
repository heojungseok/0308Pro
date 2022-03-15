package pro0308.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MemberService{
	
	private String dbID = "PRO03";
	private String dbPW = "pro03";
	private String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	private String driver = "oracle.jdbc.driver.OracleDriver";
	
	public void test(String id) {
		
		String sql = "INSERT INTO test1 (uuid)"
				+ "VALUES(?)";
		
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, dbID, dbPW);
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, id);
			
			int result = pst.executeUpdate();
			System.out.println("OK : "+result);
			
			con.close();
			pst.close();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void chkTest(String id) {
		
		String sql = "SELECT * FROM test1 WHERE uuid = " + "'" + id + "'";
		
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, dbID, dbPW);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()) {
				
				if(rs.getString("uuid") == id) {
					System.out.println("ม฿บน");
				}
			}
			
			con.close();
			st.close();
			rs.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
