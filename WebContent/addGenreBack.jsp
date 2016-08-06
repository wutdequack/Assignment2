<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String genre = request.getParameter("newgenre");

Class.forName("com.mysql.jdbc.Driver");

String connURL = "jdbc:mysql://cqr.softether.net:3306/Jontus?user=root&password=EADBestModule";

Connection conn = DriverManager.getConnection(connURL);
	
	PreparedStatement pstmt = conn.prepareStatement("insert into genre(genre_Name)values(?)");
	pstmt.setString(1,genre);
	
	pstmt.executeUpdate();
	conn.close();
	response.sendRedirect("addGenre.jsp");
%>
</body>
</html>