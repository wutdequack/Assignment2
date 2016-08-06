<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<title>Deleting game</title>
</head>
<body>
	<%
	int id = Integer.parseInt(request.getParameter("gameid"));
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			String connURL = "jdbc:mysql://cqr.softether.net:3306/Jontus?user=root&password=EADBestModule";
			
			Connection conn = DriverManager.getConnection(connURL);
		
			PreparedStatement pstmt = conn.prepareStatement("DELETE FROM games WHERE id_Game=?");
			pstmt.setInt(1, id);

			pstmt.executeUpdate();
			conn.close();
			response.sendRedirect("indexadmin.jsp");
		} catch (Exception e) {
			System.err.println("Error :" + e);
		}
	%>

</body>
</html>