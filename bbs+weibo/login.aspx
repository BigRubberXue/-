<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<!DOCTYPE html>

 <html class="no-js"> 
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>兴趣圈登陆</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	  
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	</head>
	<body>

		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">				
				</div>
			</div>
            
			<div class="row">
				<div class="col-md-4 col-md-offset-4">				
					<!-- Start Sign In Form -->
					<form action="#" class="fh5co-form animate-box" data-animate-effect="fadeIn" runat="server" style="margin-top:200px">
						<h2>登陆</h2>
						<div class="form-group">
							<label for="username" class="sr-only">Username</label>							
                            <asp:TextBox ID="TextBox1" runat="server" type="text" class="form-control"  placeholder="用户名"  autocomplete="off"></asp:TextBox>
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">Password</label>							
                            <asp:TextBox ID="TextBox2" runat="server" type="password" class="form-control" placeholder="密码" autocomplete="off"></asp:TextBox>
						</div>
						<div class="form-group">
							<label for="remember"><input type="checkbox" id="remember"> Remember Me</label>
						</div>
						<div class="form-group">
							<p>Not registered? <a href="registered.aspx">注册</a> | <a href="forgot.aspx">忘记密码?</a></p>
						</div>
						<div class="form-group">							
                            <asp:Button ID="login_btn" runat="server" Text="登陆"  class="btn btn-primary" OnClick="login_btn_Click"/>
						</div>
					</form>
					<!-- END Sign In Form -->

				</div>
			</div>
			
		</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>

	</body>
</html>
