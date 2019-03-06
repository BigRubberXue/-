<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registered.aspx.cs" Inherits="registered" %>


<!DOCTYPE html>

<html class="no-js">
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>兴趣圈网站注册</title>
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
				<div class="col-md-4 col-md-offset-4">
					

					<!-- Start Sign In Form -->
					<form action="#" class="fh5co-form animate-box" data-animate-effect="fadeIn" runat="server">
						<h2>注册</h2>
						<div class="form-group" style="display:none" id="div1" runat="server">
							<div class="alert alert-success" role="alert">Your info has been saved.</div>
						</div>
						<div class="form-group">
							<label for="name" class="sr-only">用户名</label>					
                            <asp:TextBox ID="uname" runat="server" type="text" class="form-control"  placeholder="用户名" autocomplete="off"></asp:TextBox>
                        </div>						
						<div class="form-group">
							<label for="password" class="sr-only">密码</label>						
                            <asp:TextBox ID="pwd1" runat="server" type="password" class="form-control" placeholder="密码" autocomplete="off"></asp:TextBox>
						</div>
						<div class="form-group">
							<label for="re-password" class="sr-only">确认密码</label>							
                            <asp:TextBox ID="pwd2" runat="server"  type="password" class="form-control"  placeholder="确认密码" autocomplete="off"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="两次输入的密码不一致" ControlToCompare="pwd1" ControlToValidate="pwd2"></asp:CompareValidator>
						</div>
						<div class="form-group">
							<label for="remember"><input type="checkbox" id="remember"> Remember Me</label>
						</div>
						<div class="form-group">
							<p>Already registered? <a href="login.aspx">登陆</a></p>
						</div>
						<div class="form-group">							
                            <asp:Button ID="submit" runat="server" Text="确认注册" class="btn btn-primary" OnClick="submit_Click"/>
						</div>
					</form>
					<!-- END Sign In Form -->

				</div>
			</div>
			<div class="row" style="padding-top: 60px; clear: both;">
               
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
