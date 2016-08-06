<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@page import="java.sql.*,java.util.*,model.*,member.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta name="robots" content="all,follow">
<meta name="googlebot" content="index,follow,snippet,archive">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>SP Game Shop</title>

<meta name="keywords" content="">

<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,500,700,800'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap and Font Awesome css -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- Css animations  -->
<link href="css/animate.css" rel="stylesheet">

<!-- Theme stylesheet, if possible do not edit this stylesheet -->
<link href="css/style.default.css" rel="stylesheet"
	id="theme-stylesheet">

<!-- Custom stylesheet - for your changes -->
<link href="css/custom.css" rel="stylesheet">

<!-- Responsivity for older IE -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

<!-- Favicon and apple touch icons-->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="img/apple-touch-icon.png" />
<link rel="apple-touch-icon" sizes="57x57"
	href="img/apple-touch-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="72x72"
	href="img/apple-touch-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="76x76"
	href="img/apple-touch-icon-76x76.png" />
<link rel="apple-touch-icon" sizes="114x114"
	href="img/apple-touch-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="120x120"
	href="img/apple-touch-icon-120x120.png" />
<link rel="apple-touch-icon" sizes="144x144"
	href="img/apple-touch-icon-144x144.png" />
<link rel="apple-touch-icon" sizes="152x152"
	href="img/apple-touch-icon-152x152.png" />
<!-- owl carousel css -->

<link href="css/owl.carousel.css" rel="stylesheet">
<link href="css/owl.theme.css" rel="stylesheet">
</head>
<body>
<%@ include file="indexMem.jsp" %>

<%
String error = (String)request.getAttribute("error");
if(error!=null){
%>
<h3>
<%=error%>
</h3>
<%
}
%>
	<div class="table-responsive">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Game name</th>
					<th></th>
					<th>Price/copy</th>
					<th>Quantity</th>
					<th>Total price</th>
				</tr>
			</thead>
			<tbody>
				<%
					ArrayList<Item> cart = (ArrayList<Item>) session.getAttribute("shoppingcart");
					double sum = 0;
						if(cart != null){
					for(Item i: cart){
						Games g = i.getGame();
						sum+=g.getPrice()*i.getQuantity();
				%>
				<tr>
					<td><%=g.getGame_Title()%></td>
					<td><img src="<%=g.getImage()%>"></td>
					<td>$<%=String.format("%.2f",g.getPrice())%></td>
					<td>
						<form action="updatecartquantity">
							<input type="hidden" name="id_Game" value="<%=g.getId_Game()%>" />
							<input type="text" name="quantity" value="<%=i.getQuantity()%>" />
							<input type="submit" value="Update quantity">
						</form>
					</td>
					<td>$<%=String.format("%.2f",g.getPrice()*i.getQuantity())%></td>
					<td>
						<form action="removefromcart">
							<input type="hidden" name="id_Game" value="<%=g.getId_Game()%>" />
							<input type="submit" value="Remove game">
						</form>
					</td>
				</tr>
				<% 
					}
						}
				%>
				<tr>
				<td colspan='3'> 
				</td>
				<td>Amount payable: 
				</td>
				<td>$<%=String.format("%.2f",sum )%>
				</td>
				<td>
				<form action="checkout.jsp">
				<input type="submit" name="Checkout" value="Checkout">
				</form>
				</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>