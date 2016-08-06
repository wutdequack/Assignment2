<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import= "java.sql.*,model.*,controller.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Searching game</title>
</head>
<body>
<%@ include file="indexMem.jsp" %>

	<hr>
	<%
	String searchString = request.getParameter("searchString");
	
	try{
		
		Class.forName("com.mysql.jdbc.Driver");
		
		String conn1URL = "jdbc:mysql://cqr.softether.net:3306/Jontus?user=root&password=EADBestModule";
		
		Connection conn1 = DriverManager.getConnection(connURL);
		
		PreparedStatement pstmt1 = conn.prepareStatement("Select * FROM games where game_Title LIKE ?");
			pstmt1.setString(1, "%" + searchString + "%");
			
			ResultSet rs1 = pstmt1.executeQuery();
		%>
		
		
		<table class="container table" border="1" width="70%">
		<h2 class = "container table">Games found:</h2>
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
				<th>Add game to cart</th>
				</tr>
				</thead>
				<%
					while(rs1.next()){
						
				%>
				<tbody>
				<tr>
					<td><%=rs1.getString("id_Game")%></td>
					<td><%=rs1.getString("game_Title")%></td>
					<td><img src="<%=rs1.getString("image")%>"></td>
					<td><%=rs1.getString("company")%></td>
					<td>S$<%=rs1.getString("price")%></td>
					<td><%=rs1.getString("release_Date")%></td>
					<td><%=rs1.getString("descr")%></td>
					<td><%=rs1.getString("pre_Owned")%></td>
					<td><%=rs1.getString("systemSpecs")%></td>
					<td>
					<form action ="add2cart">
					<input type="hidden" name="id_Game" value=<%=rs1.getInt("id_Game")%>>
					<input type="submit" value="Add2Cart">
					
					</form>
					</td>
					
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