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
	String GameTitle = request.getParameter("Game Title");
	String Company = request.getParameter("Company");
	String ReleasedDate = request.getParameter("Released Date");
	String Description = request.getParameter("Description");
	String Price = request.getParameter("Price");
	int Preowned = Integer.parseInt(request.getParameter("Preowned"));
	String SystemSpecifications = request.getParameter("Specifications");
	String Image = request.getParameter("Image");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		String connURL = "jdbc:mysql://localhost/jontus?user=root&password=root";	
		Connection conn = DriverManager.getConnection(connURL); 
		PreparedStatement pstmt=conn.prepareStatement("UPDATE games SET game_Title=?,company=?,release_Date=?,descr=?,price=?,pre_Owned = ?,systemSpecs=?,image=? WHERE id_Game = ?");
		pstmt.setString(1, GameTitle);
		pstmt.setString(2, Company);
		pstmt.setString(3, ReleasedDate);
		pstmt.setString(4, Description);
		pstmt.setString(5, Price);
		pstmt.setInt(6, Preowned);
 		pstmt.setString(7, SystemSpecifications);
 		pstmt.setString(8, Image);
 		pstmt.setInt(9, id);
		pstmt.executeUpdate();
		conn.close();
		response.sendRedirect("indexadmin.jsp");
	} catch (Exception e) {
		System.err.println("Error :" + e);
	}
%>
</body>
</html>