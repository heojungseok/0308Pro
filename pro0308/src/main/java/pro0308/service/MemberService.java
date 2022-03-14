package pro0308.service;

public class MemberService implements CreateInfo{
	
	private String dbID = "";
	private String dbPW = "";
	private String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	private String driver = "oracle.jdbc.driver.OracleDriver";
	
	@Override
	public void insert() {
		
	}
	
}
