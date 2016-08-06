<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.*"%>
<%@page import="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	System.out.println(name);
	String msg = request.getParameter("comment");
	String gid = request.getParameter("gameid");
	String stars = request.getParameter("stars");
	
	String title = "Locale Specific Dates";
	java.util.Date date = new java.util.Date();
    java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String currentTime = sdf.format(date);
	
	//Step 1: Load JDBC Driver 
		Class.forName("com.mysql.jdbc.Driver");
		// Step 2: Define Conection URL
		String connURL ="jdbc:mysql://localhost/jontus?user=root&password=root";
		// Step 3: Establish connection to URL
		Connection conn = DriverManager.getConnection(connURL);
	
		PreparedStatement pstmt1 = conn.prepareStatement("insert into comment(commentname, stars, comment, dt)values(?,?,?,?)");
 		pstmt1.setString(1,name);
 		pstmt1.setString(2, stars);
 		pstmt1.setString(3, msg);
 		pstmt1.setString(4, currentTime);
 		
 		pstmt1.executeUpdate();
 		
 		PreparedStatement pstmt2 = conn.prepareStatement("Select id_Comment from comment order by id_Comment DESC Limit 1");
		ResultSet rs = pstmt2.executeQuery();
			rs.next();
			String cid=rs.getString("id_Comment");
			System.out.println(cid);
			
 		PreparedStatement pstmt3 = conn.prepareStatement("insert into games_comment VALUES(?,?)");
 		pstmt3.setString(1,gid);
 		pstmt3.setString(2,cid);
 		pstmt3.executeUpdate();
 		conn.close();
 		response.sendRedirect("index.jsp");
%>
</body>
</html>