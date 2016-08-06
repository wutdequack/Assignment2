<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="robots" content="all,follow">
<meta name="googlebot" content="index,follow,snippet,archive">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Stellaris</title>

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

<title>Insert title here</title>
</head>
<body>
	<%
		//Step 1: Load JDBC Driver 
		Class.forName("com.mysql.jdbc.Driver");
		// Step 2: Define Conection URL
		String connURL = "jdbc:mysql://localhost/jontus?user=root&password=root";
		// Step 3: Establish connection to URL
		Connection conn = DriverManager.getConnection(connURL);

		PreparedStatement pstmt = conn.prepareStatement("Select * from games ga, games_genre gg, genre ge where ga.id_Game = gg.id_Game AND gg.id_Genre = ge.id_Genre AND ga.id_Game=7");
		ResultSet rs = pstmt.executeQuery();
			rs.next();
		
	%>
	<div id="all">
		<header> <!-- *** TOP ***
_________________________________________________________ -->
		<div id="top">
			<div class="container">
				<div class="row">
					<div class="col-xs-5 contact">
						<p class="hidden-md hidden-lg">
							<a href="#" data-animate-hover="pulse"><i class="fa fa-phone"></i></a>
							<a href="#" data-animate-hover="pulse"><i
								class="fa fa-envelope"></i></a>
						</p>
					</div>
						<div class="login">
							<a href="#" data-toggle="modal" data-target="#login-modal"><i
								class="fa fa-sign-in"></i> <span
								class="hidden-xs text-uppercase">Sign in</span></a> 
						</div>

					</div>
				</div>
			</div>
		</div>

		<!-- *** TOP END *** --> <!-- *** NAVBAR ***
    _________________________________________________________ -->

		<div class="navbar-affixed-top" data-spy="affix" data-offset-top="200">

			<div class="navbar navbar-default yamm" role="navigation" id="navbar">

				<div class="container">
					<div class="navbar-header">

						<a class="navbar-brand home" href="index.jsp"> <img
							src="img/logo.png" alt="Universal logo"
							class="hidden-xs hidden-sm"> <img src="img/logo-small.png"
							alt="Universal logo" class="visible-xs visible-sm"><span
							class="sr-only">Universal - go to homepage</span>
						</a>
						<div class="navbar-buttons">
							<button type="button" class="navbar-toggle btn-template-main"
								data-toggle="collapse" data-target="#navigation">
								<span class="sr-only">Toggle navigation</span> <i
									class="fa fa-align-justify"></i>
							</button>
						</div>
					</div>
					<!--/.navbar-header -->
					<div class="navbar-collapse collapse" id="navigation">
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown active"><a href="javascript: void(0)"
								class="dropdown-toggle" data-toggle="dropdown">Games <b
									class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="DS3.jsp">Dark Souls III</a></li>
									<li><a href="SV.jsp">Stardew Valley</a></li>
									<li><a href="GTAV.jsp">GTA V</a></li>
									<li><a href="CSGO.jsp">CS: GO</a></li>
									<li><a href="DOOM.jsp">DOOM</a></li>
									<li><a href="BB.jsp">Battleborn</a></li>
									<li><a href="S.jsp">Stellaris</a></li>
									<li><a href="RL.jsp">Rocket League</a></li>
								</ul></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown active"><a href="index.jsp">Home </a></li></ul>
					</div>
					<!--/.nav-collapse -->



					<div class="collapse clearfix" id="search">

						<form class="navbar-form" role="search">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Search">
								<span class="input-group-btn">

									<button type="submit" class="btn btn-template-main">
										<i class="fa fa-search"></i>
									</button>

								</span>
							</div>
						</form>

					</div>
					<!--/.nav-collapse -->

				</div>


			</div>
			<!-- /#navbar -->

		</div>

		<!-- *** NAVBAR END *** --> </header>

		<!-- *** LOGIN MODAL ***
_________________________________________________________ -->

		<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
			aria-labelledby="Login" aria-hidden="true">
			<div class="modal-dialog modal-sm">

				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="Login">Customer login</h4>
					</div>
					<div class="modal-body">
                    <form action="VerifyUser.jsp" method=post>
                            <div class="form-group">
                                <input type="text" class="form-control" id="email_modal" placeholder="username" name="user">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" id="password_modal" placeholder="password" name="pwd">
                            </div>

                            <p class="text-center">
                                <button class="btn btn-template-main"><i class="fa fa-sign-in"></i> Log in</button>
                            </p>

                        </form>

                    </div>
				</div>
			</div>
		</div>

		<!-- *** LOGIN MODAL END *** -->

		<div id="heading-breadcrumbs">
			<div class="container">
			</div>
		</div>

		<div id="content">
			<div class="container">

				<div class="row">
					<div class="col-md-12">
						<div class="heading">
							<h2><%=rs.getString("ga.game_Title")%></h2>
						</div>
					</div>
				</div>
				<div class="col-sm-12">

						<div class="heading">
							<h3>Game Description</h3>
						</div>
						<p>
						<%=rs.getString("ga.descr")%>
							</p>
							<br/>
							<br/>
					</div>
				<div class="row portfolio-project">

					<section>

					<div class="col-sm-8">
						<div class="project owl-carousel">
							<div class="item">
								<img src="<%=rs.getString("image")%>" alt="" class="img-responsive">
							</div>
						</div>
						<!-- /.project owl-slider -->

					</div>

					<div class="col-sm-4">
						<div class="project-more">							
							<h4>Company</h4>
							<p><%=rs.getString("ga.company")%></p>
							<h4>Date</h4>
							<p><%=rs.getString("ga.release_Date")%></p>
							<h4>Price</h4>
							<p><%=rs.getString("ga.price")%></p>
							<h4>Genre</h4>
							<p>	
								<%
								rs.close();
								conn.close();
								
								Class.forName("com.mysql.jdbc.Driver");
								String connURL1 = "jdbc:mysql://localhost/jontus?user=root&password=root";
								Connection conn1 = DriverManager.getConnection(connURL1);

								PreparedStatement pstmt1 = conn1.prepareStatement("Select * from games ga, games_genre gg, genre ge where ga.id_Game = gg.id_Game AND gg.id_Genre = ge.id_Genre AND ga.id_Game=7");
								ResultSet genrers = pstmt1.executeQuery();
								while(genrers.next()){
								String genre =genrers.getString("ge.genre_Name");
								out.println(genre+ "<br/>");
								}
								%>

							</p>
						</div>
					</div>

					</section>

					<section>

					<div class="col-sm-12">

						<div class="heading">
							<h3>System Specs</h3>
						</div>
						<p>
						<%
								genrers.close();
								conn1.close();
								
								Class.forName("com.mysql.jdbc.Driver");
								String connURL2 = "jdbc:mysql://localhost/jontus?user=root&password=root";
								Connection conn2 = DriverManager.getConnection(connURL2);

								PreparedStatement pstmt2 = conn2.prepareStatement("Select * from games ga, games_genre gg, genre ge where ga.id_Game = gg.id_Game AND gg.id_Genre = ge.id_Genre AND ga.id_Game=7");
								ResultSet ssrs = pstmt2.executeQuery();
								ssrs.next();
								String ss =ssrs.getString("ga.systemSpecs");
								out.println(ss);
								%>
							</p>
						<br/>
						<br/>
						<br/>
					</div>
					</section>
					
					<section>

					<div class="col-sm-12">

						<div class="heading">
							<h3>Comments</h3>
						</div>
						<br>
						<table border="1" style="width:100%">
<% 
ssrs.close();
conn2.close();
Class.forName("com.mysql.jdbc.Driver");
String connURL3 = "jdbc:mysql://localhost/jontus?user=root&password=root";
Connection conn3 = DriverManager.getConnection(connURL3);
PreparedStatement pstmt3 = conn3.prepareStatement("Select * from games ga, games_comment gc, comment co where ga.id_Game = gc.id_Game AND gc.id_Comment = co.id_Comment AND ga.id_Game=7");
ResultSet rs3 = pstmt3.executeQuery();
out.println("<table border='1'>");
out.println("<tr>");
out.println("<td>Name</td>");
out.println("<td>Stars</td>");
out.println("<td>Comment</td>");
out.println("<td>Date</td>");
out.println("</tr>");
while(rs3.next()){
	String stars = rs3.getString("co.stars");
	String name  = rs3.getString("co.commentname");
	String comment = rs3.getString("co.comment");
	String dt = rs3.getString("co.dt");
	
	out.println("<tr>");
	out.println("<td>"+name+"</td>");
	out.println("<td>"+stars+"</td>");
	out.println("<td>"+comment+"</td>");
	out.println("<td>"+dt+"</td>");
	out.println("</tr>");
	
	
	
}
out.println("</table>");
%>
						<br/>
						<br/>
						<br/>
					</div>
					</section>

				</div>

				<div class="box">
					<form action="commentsBack.jsp">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="password_old">Name</label>
                                            <input type="text" name="name" class="form-control" id="password_old">
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="password_old">Stars Rating</label>
                                            <br>
                                            <input type="radio" name="stars" value="1"> 1
  											<input type="radio" name="stars" value="2"> 2
  											 <input type="radio" name="stars" value="3">3
  											<input type="radio" name="stars" value="4">4
  											 <input type="radio" name="stars" value="5">5
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="password_old">Comment</label>
                                            	<br/>
                                            <textarea name="comment" rows="10" cols="70">
											</textarea>
                                        </div>
                                    </div>
                                </div>
                                
                                <input type="hidden" value="7" name="gameid">
                                
                                <!-- /.row -->

                                <div class="text-center">
                                    <button type="submit" class="btn btn-template-main"><i class="fa fa-save"></i> Submit Comment</button>
                                </div>
                            </form>
				
				
				</div>

		</div>


		<!-- *** COPYRIGHT ***
_________________________________________________________ -->

		<div id="copyright">
			<div class="container">
				<div class="col-md-12">
					<p class="pull-left">&copy; 2016. SP Game Shop</p>
					<p class="pull-right">
						Template by <a href="http://bootstrapious.com/free-templates">Bootstrapious</a>
						<!-- Not removing these links is part of the licence conditions of the template. Thanks for understanding :) -->
					</p>

				</div>
			</div>
		</div>
		<!-- /#copyright -->

		<!-- *** COPYRIGHT END *** -->



	</div>
	<!-- /#all -->

	<!-- #### JAVASCRIPT FILES ### -->

	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="js/jquery-1.11.0.min.js"><\/script>')
	</script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<script src="js/jquery.cookie.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/jquery.parallax-1.1.3.js"></script>
	<script src="js/front.js"></script>



	<!-- owl carousel -->
	<script src="js/owl.carousel.min.js"></script>



</body>
