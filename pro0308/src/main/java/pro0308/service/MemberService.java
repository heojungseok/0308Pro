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
	public int chkTest(String id) {
		int chk = 0;
		String sql = "SELECT * FROM userinfo WHERE uuid = " + "'" + id + "'";
		String chkid = "";
		
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, dbID, dbPW);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);

			while(rs.next()) {
				chkid = rs.getString("uuid");
				if (chkid.equals(id)) {
					return chk = 1;
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
		return chk;
	}
}
