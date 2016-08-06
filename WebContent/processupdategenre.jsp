<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Updating</title>
</head>
<body>
<%	
	
	int id = Integer.parseInt(request.getParameter("id"));
	String oldGenre = request.getParameter("oldGenre");
	String newGenre = request.getParameter("newGenre");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		String connURL = "jdbc:mysql://localhost/jontus?user=root&password=root";	
		Connection conn = DriverManager.getConnection(connURL); 
		PreparedStatement pstmt=conn.prepareStatement("UPDATE games_genre SET id_Genre=? WHERE id_Game=? AND id_Genre=?");
 		pstmt.setString(1, newGenre);
 		pstmt.setInt(2, id);
 		pstmt.setString(3, oldGenre);
		pstmt.executeUpdate();
		conn.close();
		response.sendRedirect("indexadmin.jsp");
	} catch (Exception e) {
		System.err.println("Error :" + e);
	}
%>
</body>
</html>