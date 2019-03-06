<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>兴趣圈首页</title>
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
<body style ="background-image :url(img/1.jpg) ;background-attachment :fixed  ">
<div class="container" >
    <div class="row clearfix" style ="position :fixed ;width :85%;z-index :100 ">
		<div class="col-md-12 column"  >
			<nav class="navbar navbar-default" role="navigation" style ="opacity :0.7" >
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="main.aspx">兴趣圈首页</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li >
							<a href="person_M.aspx?user_id=<%=my_user_id%>">个人中心</a>
						</li>
						<li>
							 <a href="friend_a.aspx">好友动态</a>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search" runat="server">
						<div class="form-group">
							<!--<input type="text" class="form-control" />-->
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
						</div> 
                        <!--<button type="submit" class="btn btn-default">文章搜索</button>-->
                        <asp:Button ID="Button1" runat="server" Text="文章搜索" class="btn btn-default" OnClick="Button1_Click"/>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
							 <a href="#">欢迎你</a>
						</li>
                        <li>
                            <a><asp:Label ID="Label5" runat="server" /></a>
                        </li>					
					</ul>
				</div>
			</nav>
		</div>
	</div>
     <!--轮播-->
	<div class="row clearfix" style="margin-top :50px;margin-left :15% ;height :400px ;width :70%" >
		<div class="col-md-12 column">
			<div class="carousel slide" id="carousel-168984">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-168984">
					</li>
					<li data-slide-to="1" data-target="#carousel-168984">
					</li>
					<li data-slide-to="2" data-target="#carousel-168984">
					</li>
				</ol>
				<div class="carousel-inner" >
					<div class="item active">
						<img alt="" src="img/青春.jpg" /> 
						<div class="carousel-caption">
							<h4>
								
							</h4>
							<p>
								
							</p>
						</div>
					</div>
					<div class="item">
						<img alt=""src="img/秋雨.jpg" />
						<div class="carousel-caption">
							<h4>
								
							</h4>
							<p>
								
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="img/运动.jpg"/>
						<div class="carousel-caption">
							<h4>
								
							</h4>
							<p>
								
							</p>
						</div>
					</div>
				</div> <a class="left carousel-control" href="#carousel-168984" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-168984" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</div>
     <p></p>
     <p></p>
     
        <div style="margin :0 auto ; width:80%">
        
        <iframe  onload="Javascript:SetIFrameHeight(this)" src="./article_show.aspx"  id="ifraMain" name="ifraMain"  allowtransparency="true" style="  border:hidden;visibility:inherit;z-index:100;margin-left :90px;width :80%;margin-top:70px"> </iframe>
        
        </div>

     <!--文章-->
     <p></p>
     <input type="text" class="form-control" style="margin:5%;width:60%;margin-left :20%" data-toggle="modal" data-target="#myModal" id="showModal" placeholder="在这里发表文章" />
       
     <ol class="showItem"></ol>
    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"  >
        <div class="modal-dialog" >
            <div class="modal-content" style ="height :400px;border:hidden" >
                <div class="modal-header" >
                    <iframe src="./sendart.aspx"  id="ifraMai2n" name="ifraMain2"  style="height:350px;border:hidden;visibility:inherit; width:100%;z-index:100;"></iframe>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
 
        