package login.naman.registration;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnectionProvider implements MyProvider {

	static Connection con=null;
	public static Connection getCon() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection(connUrl,"sys as sysdba","system");
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return con;
	}
}
