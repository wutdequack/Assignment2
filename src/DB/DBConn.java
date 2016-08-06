package DB;
import java.sql.*;

public class DBConn {
	public static Connection getConnection() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		String connURL = "jdbc:mysql://cqr.softether.net/Jontus?user=root&password=EADBestModule";
		Connection conn = DriverManager.getConnection(connURL);
		return conn;
	}

}
