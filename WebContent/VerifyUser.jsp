<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String user = request.getParameter("user");
String pwd = request.getParameter("pwd");	
//Step 1: Load JDBC Driver 
	Class.forName("com.mysql.jdbc.Driver");
	// Step 2: Define Conection URL
	String connURL ="jdbc:mysql://localhost/jontus?user=root&password=root";
	// Step 3: Establish connection to URL
	Connection conn = DriverManager.getConnection(connURL);

	PreparedStatement pstmt = conn.prepareStatement("Select * from administrator where adminid like ? and adminpassword like ?");
	pstmt.setString(1,"%"+user+"%");
	pstmt.setString(2,"%"+pwd+"%");
	
	ResultSet rs = pstmt.executeQuery();
	if(rs.next()){
		response.sendRedirect("indexadmin.jsp");
	}else{
		response.sendRedirect("index.jsp");
	}
	
		

%>
</body>
</html>