<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"/>  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript">  
      function SetIFrameHeight(obj) {
            var win = obj;
            if (document.getElementById) {
                if (win && !window.opera) {
                    if (win.contentDocument && win.contentDocument.body.offsetHeight)
                        win.height = win.contentDocument.body.offsetHeight;
                    else if (win.Document && win.Document.body.scrollHeight)
                        win.height = win.Document.body.scrollHeight;
                }
            }
        }
    </script>
</head>
<body  style ="background-image :url(img/文章背景.png);background-repeat :no-repeat ;background-size :100% ;background-attachment :fixed  ">
    <form id="form1" runat="server">
        <div class="container">
        <div>
            <div class="row clearfix" style ="position :fixed ;width :91%;z-index :9999 ">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="main.aspx">兴趣圈首页</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="person_M.aspx?user_id=<%=my_user_id%>">个人中心</a>

						</li>
						<li>
							 <a href="friend_a.aspx">好友动态</a>
						</li>
				
					</ul>
					
					<ul class="nav navbar-nav navbar-right">
						<li>
							 <a href="#">欢迎你</a>
                            
						</li>
<li> <a><asp:Label ID="Label5" runat="server" /></a></li>					
					</ul>
				</div>
				
			</nav>
		</div>
	</div>
        </div>
            <div style ="margin-top :60px" >
                    
                    <asp:TextBox ID="TextBox1" style="width:40%;border-style:inset"  runat="server"></asp:TextBox>
                   
                    <asp:Button ID="Button1" class="btn btn-default" runat="server" Text="点我"  OnClick="Button1_Click"/>
            </div>
        <div>
            <iframe  onload="Javascript:SetIFrameHeight(this)" src="./article_show.aspx?add_str=<%=str%>"  id="ifraMain" name="ifraMain"  style="border:hidden;visibility:inherit; width:100%;z-index:100;"> </iframe>
        </div>
            </div>
</form>
</body>
</html>
