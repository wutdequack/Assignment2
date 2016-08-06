<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
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

							<div class="input-group">
								<input type="text" class="form-control" placeholder="Search">
								<span class="input-group-btn">

									<button type="submit" class="btn btn-template-main">
										<i class="fa fa-search"></i>
									</button>

								</span>
							</div>

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
                            <div class="form-group">
                                <input type="text" class="form-control" id="email_modal" placeholder="username" name="user">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" id="password_modal" placeholder="password" name="pwd">
                            </div>

                            <p class="text-center">
                                <button class="btn btn-template-main"><i class="fa fa-sign-in"></i> Log in</button>
                            </p>


                    </div>
				</div>
			</div>
		</div>

		<!-- *** LOGIN MODAL END *** -->


        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>New account / Sign in</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a>
                            </li>
                            <li>New account / Sign in</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

        <div id="content">
            <div class="container">

                <div class="row">
                    <div class="col-md-6">
                        <div class="box">
                            <h2 class="text-uppercase">New account</h2>

                            <p class="lead">Not our registered customer yet?</p>
                            <p>Sign up to see a plethora of updated games! The whole process will not take you more than a minute!</p>
                            <p class="text-muted">Leggo!!!!!</p>

                            <hr>
							<script type="text/javascript">
								function validateForm(form){
									if(form.name.value==""){
										alert("Please fill in your Name!");
										form.name.focus();
										return false;
									}
									if(form.user.value==""){
										alert("Please fill in your Email!");
										form.user.focus();
										return false;
									}
									if(form.pwd.value==""){
										alert("Please fill in your password!");
										form.pwd.focus();
										return false;
									}
									if(form.no.value==""){
										alert("Please fill in your Contact Number!");
										form.no.focus();
										return false;
									}
									if(form.addr.value==""){
										alert("Please fill in your Mailing Address");
										form.addr.focus();
										return false;
									}
									re = /(?=.*[a-zA-Z].*)(?=.*\d.*)\S{8,16}/;
										if(!re.test(form.pwd.value)){
											alert("Password be between 8 to 16 characters and be alphanumeric.");
											form.pwd.focus();
											return false;
										}
									if(form.no.value.length<8 || form.no.value.length>8){
										alert("Contact number must only be 6 characters!");
										form.no.focus();
										return false;
									}if(form.user.indexOf("@") < -1 ){
										alert("Email must contain at least 1 '@' symbol!");
										form.user.focus();
										return false;
									}if (form.user.indexOf(".")<-1){
										alert("Email must contain at least 1 '.' symbol!'");
										form.user.focus();
										return false;
									}	
								}
							</script>
                            <form action="RegisterValidate" method="POST" onsubmit="return validateForm(this);">
                            	<%
                            	String errMsg =(String) session.getAttribute("error");
                            	String successMsg =(String)session.getAttribute("success");
   	                         	if(errMsg != null){
                            		out.println(errMsg);
                            	}else if(successMsg != null){
                            		out.println(successMsg);
                            	}
   	                         	session.removeAttribute("error");
   	                      		session.removeAttribute("success");
                            	%>
                            	<br/>
                                <div class="form-group">
                                    <label for="name-login">Name</label>
                                    <input type="text" name="name" class="form-control" id="name-login">
                                </div>
                                <div class="form-group">
                                    <label for="email-login">Email</label>
                                    <input type="text" class="form-control" id="email-login" name="user">
                                </div>
                                <div class="form-group">
                                    <label for="password-login">Password</label>
                                    <input type="password" class="form-control" id="password-login" name="pwd">
                                </div>
                                <div class="form-group">
                                    <label for="email-login">Contact Number</label>
                                    <input type="text" class="form-control" id="email-login" name="no">
                                </div>
                                <div class="form-group">
                                    <label for="email-login">Mailing Address</label>
                                    <input type="text" class="form-control" id="email-login" name="addr">
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-template-main"><i class="fa fa-user-md"></i> Register</button>
                                </div>
              				</form>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="box">
                            <h2 class="text-uppercase">Login</h2>

                            <p class="lead">Already our customer?</p>
                            <p class="text-muted">Sign in here!</p>

                            <hr>

                            <form action="ValidateController" method="POST">
                            <%
                            	String fail =(String) session.getAttribute("fail");
   	                         	if(fail != null){
                            		out.println(fail);
   	                         	}
   	                         	session.removeAttribute("fail");
                            	%>
                            	<br/>
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="text" class="form-control" id="email" name="user">
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" id="password" name="pwd">
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-template-main"><i class="fa fa-sign-in"></i> Log in</button>
                                </div>
                          </form>
                        </div>
                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->
      
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