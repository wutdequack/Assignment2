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
	String searchGenre = request.getParameter("searchGenre");
	
	try{
		
		Class.forName("com.mysql.jdbc.Driver");
		
		String connURL = "jdbc:mysql://cqr.softether.net:3306/Jontus?user=root&password=EADBestModule";
		
		Connection conn = DriverManager.getConnection(connURL);
		
		PreparedStatement pstmt = conn.prepareStatement("Select * FROM genre where genre_Name LIKE ?");
			pstmt.setString(1, "%" + searchGenre + "%");
			
			ResultSet rs = pstmt.executeQuery();
		%>
		
		
		<table class="container table" border="1" width="70%">
		<h2 class = "container table">Result table</h2>
			<thead>
			<tr>
			   
				<th>Genre id</th>
				<th>Genre name</th>
				</tr>
				</thead>
				<%
					while(rs.next()){
						
				%>
				<tbody>
				<tr>
					<td><%=rs.getString("id_Genre")%></td>
					<td><%=rs.getString("genre_Name")%></td>		

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