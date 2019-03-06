<%@ Page Language="C#" AutoEventWireup="true" CodeFile="friend_a.aspx.cs" Inherits="friend_a" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>好友动态</title>
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
 <div class="container">
	<div class="row clearfix" style ="position :fixed ;width :91%;z-index :9999 ">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="main.aspx">兴趣圈首页</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li>
							<a href="person_M.aspx?user_id=<%=my_user_id%>">个人中心</a>

						</li>
						<li  class="active">
							 <a href="#">好友动态</a>
						</li>
				
					</ul>
					<form class="navbar-form navbar-left" role="search" runat="server">
						<div class="form-group">
							<!--<input type="text" class="form-control" />-->
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
						</div> 
                        <!--<button type="submit" class="btn btn-default">文章搜索</button>-->
                        <asp:Button ID="Button1" runat="server" Text="文章搜索" class="btn btn-default" OnClick= "Button1_Click"/>
					</form>
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
    
    <iframe onload="Javascript:SetIFrameHeight(this)" src="./article_show.aspx?long_str=2"  id="ifraMain" name="ifraMain"  style="border:hidden;visibility:inherit; width:100%;z-index:100;margin-top :60px"> </iframe>
    <div> 
    </div>
    <input type="text" class="form-control" style="margin:5%;width:60%;margin-left :20%" data-toggle="modal" data-target="#myModal" id="showModal" placeholder="在这里发表文章" />
     <ol class="showItem"></ol>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top:70px">
        <div class="modal-dialog" >
            <div class="modal-content" style ="height :400px;border:hidden" >
                <div class="modal-header" >
                     <iframe onload="Javascript:SetIFrameHeight(this)" src="./sendart.aspx"  id="ifraMai2n" name="ifraMain2"  style="border:hidden;visibility:inherit; width:100%;height :350px;z-index:100;"> </iframe>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
