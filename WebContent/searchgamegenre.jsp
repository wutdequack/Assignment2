<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Searching game by genre</title>
</head>
<body>
<%@ include file="index.jsp" %>

	<hr>
	<%
	String gid = request.getParameter("gid");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		
		String conn1URL = "jdbc:mysql://cqr.softether.net:3306/Jontus?user=root&password=EADBestModule";
		
		Connection conn1 = DriverManager.getConnection(conn1URL);
		
		PreparedStatement pstmt1 = conn1.prepareStatement("Select * FROM genre G,games_genre GG, games GS Where G.id_Genre = ? AND G.id_Genre = GG.id_Genre AND GG.id_Game = GS.id_Game");
			pstmt1.setString(1, gid);
			
			ResultSet rs1 = pstmt1.executeQuery();
		%>
		
		
		<table class="container table" border="1" width="70%">
		<h2 class = "container table">Summary list</h2>
			<thead>
			<tr>
			   
				<th>Game id</th>
				<th>Name</th>
			    <th>Picture</th>
				<th>Company</th>
				<th>Price</th>
				<th>Released date</th>
				<th>Genre</th>
				</tr>
				</thead>
				<%
					while(rs1.next()){
						
				%>
				<tbody>
				<tr>
					<td><%=rs1.getString("GS.id_Game")%></td>
					<td><%=rs1.getString("GS.game_Title")%></td>
					<td><img src="<%=rs1.getString("GS.image")%>"></td>
					<td><%=rs1.getString("GS.company")%></td>
					<td>S$<%=rs1.getString("GS.price")%></td>
					<td><%=rs1.getString("GS.release_Date")%></td>
					<td><%=rs1.getString("G.genre_Name")%></td>
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