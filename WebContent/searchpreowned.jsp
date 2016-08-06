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
	String stringradio1 = request.getParameter("radio1");
	if(stringradio1==null){
		response.sendRedirect("index.jsp");
		
	}else{
	int preowned = Integer.parseInt(stringradio1);

	try{
		
		Class.forName("com.mysql.jdbc.Driver");
		
		String conn1URL = "jdbc:mysql://cqr.softether.net:3306/Jontus?user=root&password=EADBestModule";
		
		Connection conn1 = DriverManager.getConnection(conn1URL);
		
		PreparedStatement pstmt1 = conn.prepareStatement("Select * FROM games where pre_Owned = ?");
			
		pstmt1.setInt(1, preowned);
		 
			
			ResultSet rs1 = pstmt1.executeQuery();
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
				</tr>
				</tbody>
				<%
					}				
				%>

		</table>	
	<%
		
	} catch (Exception e) {
		out.println("Error :" + e);
	}}
	%>


</body>
</html>