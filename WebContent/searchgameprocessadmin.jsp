<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Searching game</title>
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
</head>
<body>
<%@ include file="indexadmin.jsp" %>

	<hr>
	<%
	String searchString = request.getParameter("searchString");
	
	try{
		
		Class.forName("com.mysql.jdbc.Driver");
		
		String connURL = "jdbc:mysql://cqr.softether.net:3306/Jontus?user=root&password=EADBestModule";
		
		Connection conn = DriverManager.getConnection(connURL);
		
		PreparedStatement pstmt = conn.prepareStatement("Select * FROM games where game_Title LIKE ?");
			pstmt.setString(1, "%" + searchString + "%");
			
			ResultSet rs = pstmt.executeQuery();
		%>
		
		
		<table class="container table" border="1" width="70%">
		<h2 class = "container table">Result table</h2>
			<thead>
			<tr>
			   
				<th>Game id</th>
				<th>Name</th>
			    <th>Picture</th>
				<th>Company</th>
				<th>Price</th>
				<th>Released date</th>
				<th>Game description</th>
				<th>Pre-owned</th>
				<th>Suggested specifications</th>
				<th>Actions</th>
				</tr>
				</thead>
				<%
					while(rs.next()){
						
				%>
				<tbody>
				<tr>
					<td><%=rs.getString("id_Game")%></td>
					<td><%=rs.getString("game_Title")%></td>
					<td><img src="<%=rs.getString("image")%>"></td>
					<td><%=rs.getString("company")%></td>
					<td>S$<%=rs.getString("price")%></td>
					<td><%=rs.getString("release_Date")%></td>
					<td><%=rs.getString("descr")%></td>
					<td><%=rs.getString("pre_Owned")%></td>
					<td><%=rs.getString("systemSpecs")%></td>
					<td><%@ include file = 'deletegame.jsp'%>
					<%@ include file = 'updategame.jsp'%>
					<%@ include file='updategamegenre.jsp' %></td>
			

				</tr>
				</tbody>
				<%
					}				
				%>

		</table>	
	<%
	conn.close();
	} catch (Exception e) {
		out.println("Error :" + e);
	}
	%>

</body>
</html>