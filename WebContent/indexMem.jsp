<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*, member.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
    <title>SP Game Shop</title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,500,700,800' rel='stylesheet' type='text/css'>

    <!-- Bootstrap and Font Awesome css -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- Css animations  -->
    <link href="css/animate.css" rel="stylesheet">

    <!-- Theme stylesheet, if possible do not edit this stylesheet -->
    <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet">

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
    <link rel="apple-touch-icon" sizes="57x57" href="img/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="img/apple-touch-icon-76x76.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="img/apple-touch-icon-120x120.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="img/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="img/apple-touch-icon-152x152.png" />
    <!-- owl carousel css -->

    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">
</head>
<body>
	<%
		boolean isMember = UserFunctions.userLoggedin(session);
		if (!isMember) {
			response.sendRedirect("Err404.jsp");
		}
	%>
    <div id="all">

        <header>

           <!-- *** TOP ***
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

		<!-- *** TOP END *** --> 

            <!-- *** NAVBAR ***
    _________________________________________________________ -->

          <div class="navbar-affixed-top" data-spy="affix" data-offset-top="200">

			<div class="navbar navbar-default yamm" role="navigation" id="navbar">

				<div class="container">
					<div class="navbar-header">

						<a class="navbar-brand home" href="indexMem.jsp"> <img
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
							<li class="dropdown active"><a href="purchaseHist.jsp">Purchase History</a></li></ul>	
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown active"><a href="modifyUser.jsp">Particulars</a></li></ul>	
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown active"><a href="indexMem.jsp">Home </a></li></ul>
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

            <!-- *** NAVBAR END *** -->

        </header>
       

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
                    <form action="ValidateController" method=post>
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


        

        <footer id="footer">
            <div class="container">
                <div class="col-md-3 col-sm-6">
<form action="searchgameprocessmem.jsp" class="navbar-form" role="search" method="post">
                                <div class="input-group">
                                <h4>Search Game: </h4>
                                    <input type="text" class="form-control" placeholder="Insert game name" name="searchString">
                 <input type = "submit" name="btnSearch" value="Submit" >
                    
                    
</form>
<form action="searchpreownedmem.jsp" class="navbar-form" role="search" method="post">
		<h4>Search for pre-owned games:</h4>
        <input type="radio" name="radio1" value="1">Pre-owned<br>
        <input type="radio" name="radio1" value="0">Not pre-owned<br>
        <input type="submit" name="btnSearch" value="Submit">        
</form>
</div>
    <form action="searchgamegenremem.jsp" name="form1" method="post">
    	<h4>Search using genre:</h4>
       <select name="gid" size="5">
                                            <%
                                    		Class.forName("com.mysql.jdbc.Driver");
                                    		
                                    		String connURL = "jdbc:mysql://cqr.softether.net:3306/Jontus?user=root&password=EADBestModule";
                                    		
                                    		Connection conn = DriverManager.getConnection(connURL);
                             	
                             		
                             		PreparedStatement pstmt = conn.prepareStatement("SELECT genre_Name, id_Genre FROM genre");
                             		ResultSet rs = pstmt.executeQuery();
                             	
                             		while(rs.next()){
                             			String name = rs.getString("genre_Name");
                             			int id = rs.getInt("id_Genre");
                             			%>
                             			<option value="<%=id%>"><%=name%></option>
                             		<%}%>
                             		</select>         
<br>
        <input type="submit" name="submit" value="Submit">
</form>

                 

                  
             
                <!-- /.col-md-3 -->
            </div>
            <!-- /.container -->
        </footer>
        <!-- /#footer -->

        <!-- *** FOOTER END *** -->

        <!-- *** COPYRIGHT ***
_________________________________________________________ -->

        <div id="copyright">
            <div class="container">
                <div class="col-md-12">
                    <p class="pull-left">&copy; 2016. SP Game Shop</p>
                    <p class="pull-right">Template by <a href="http://bootstrapious.com/free-templates">Bootstrapious</a> 
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

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script>
        window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')
    </script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <script src="js/jquery.cookie.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/jquery.parallax-1.1.3.js"></script>
    <script src="js/front.js"></script>

    

    <!-- owl carousel -->
    <script src="js/owl.carousel.min.js"></script>



</body>

</html>