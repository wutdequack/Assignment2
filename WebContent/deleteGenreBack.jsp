<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Deleting Genre</title>
</head>
<body>
<%
	String gid = request.getParameter("gid");

Class.forName("com.mysql.jdbc.Driver");

String connURL = "jdbc:mysql://cqr.softether.net:3306/Jontus?user=root&password=EADBestModule";

Connection conn = DriverManager.getConnection(connURL);
	
	PreparedStatement pstmt = conn.prepareStatement("DELETE FROM genre WHERE id_Genre=?");
	pstmt.setString(1,gid);
	
	pstmt.executeUpdate();
	conn.close();
	response.sendRedirect("deleteGenre.jsp");
%>
</body>
</html>