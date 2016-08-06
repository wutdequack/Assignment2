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

	String title = request.getParameter("title");
	String companyInput = request.getParameter("company");
	String date = request.getParameter("date");
	String desc = request.getParameter("desc");
	String priceInput = request.getParameter("price");

 	String preownedInput = request.getParameter("preowned");
 	String ss = request.getParameter("ss");
 	String img = request.getParameter("img");
 	String [] g = request.getParameterValues("genreInput");
 	System.out.println(g.length);
 	System.out.println(g[0]);
 	System.out.println(g[1]);
 	System.out.println(g[2]);
 		if(preownedInput== null ){
 			preownedInput = "0";
 		}else{
 			preownedInput = "1";
 		}
 		System.out.println(preownedInput);
 		if(img== null){
 			img = "img/default.jpg"; 
 		}
 		System.out.println(img);
		Class.forName("com.mysql.jdbc.Driver");
		
		String connURL = "jdbc:mysql://cqr.softether.net:3306/Jontus?user=root&password=EADBestModule";
		
		Connection conn = DriverManager.getConnection(connURL);
 		
 		PreparedStatement pstmt = conn.prepareStatement("insert into games(game_Title, company, release_Date, descr, price, pre_Owned, systemSpecs, image)values(?,?,?,?,?,?,?,?)");
 		pstmt.setString(1,title);
 		pstmt.setString(2, companyInput);
 		pstmt.setString(3, date);
 		pstmt.setString(4, desc);
 		pstmt.setString(5, priceInput);
 		pstmt.setString(6, preownedInput);
 		pstmt.setString(7, ss);
 		pstmt.setString(8, img);
 		
 		pstmt.executeUpdate();
 		
 		conn.close();
 		
		Class.forName("com.mysql.jdbc.Driver");
		
		String conn1URL = "jdbc:mysql://cqr.softether.net:3306/Jontus?user=root&password=EADBestModule";
		
		Connection conn1 = DriverManager.getConnection(conn1URL);
 		
 		PreparedStatement pstmt1 = conn1.prepareStatement("SELECT id_Game FROM games ORDER BY id_Game DESC LIMIT 1");
 		ResultSet rs1 = pstmt1.executeQuery();
 		rs1.next();
 		int gaid = rs1.getInt("id_Game");
 		response.sendRedirect("addGame.jsp");
 		
 		conn1.close();
 		
 		System.out.println(gaid);
 		//Step 1: Load JDBC Driver 
		Class.forName("com.mysql.jdbc.Driver");
		
		String conn2URL = "jdbc:mysql://cqr.softether.net:3306/Jontus?user=root&password=EADBestModule";
		
		Connection conn2 = DriverManager.getConnection(conn2URL);
 		for(int i=0; i<g.length; i++){
 		PreparedStatement pstmt2 = conn2.prepareStatement("Insert into games_genre (id_Game, id_Genre) VALUES(?,?)");
			pstmt2.setInt(1, gaid);
		
			String s = g[i];
			System.out.println(s);
			pstmt2.setString(2, s);
			pstmt2.executeUpdate();
		}
%>
</body>
</html>