<%@ Page Language="C#" AutoEventWireup="true" CodeFile="article.aspx.cs" Inherits="article" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>兴趣圈首页</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"/>  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
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
						<li class="active">
							 <a href="person_M.aspx?user_id=<%=my_user_id%>">个人中心</a>
						</li>
						<li>
							 <a href="friend_a.aspx">好友动态</a>
						</li>
				
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div> <button type="submit" class="btn btn-default">文章搜索</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
							 <a href="#">欢迎你</a>
						</li>
<li> <a >
    <asp:Label ID="Label5" runat="server" ></asp:Label></a></li>					
					</ul>
				</div>
				
			</nav>
		</div>
	</div></div>


    
                <!--标题-->
         <div class="text-center" style="height: 100px ; margin-top :55px">
                <p>
                    <asp:Label  Style="line-height: 60px" ID="Label1" runat="server"  Text="题目" Font-Size="XX-Large " ></asp:Label>
                   
                </p>
             <a style ="margin-left :50%;color:black" href="person_other.aspx?user_id=<%=article_user_id%>" >
                 <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> </a>
            </div>

    
            <div class="row clearfix ">
                <div class="col-md-2 "></div>
                <div class="col-md-8 ">
                    <!-- 正文-->
                    <p>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></p>
                    <iframe  onload="Javascript:SetIFrameHeight(this)" src="./liuyan.aspx?article_id=<%=article_id%>"  id="ifraMain" name="ifraMain"  style="border:hidden;visibility:inherit; width:100%;z-index:100;"> </iframe>
                    <form runat="server">
                    <!--文章功能-->
                    <div class="btn-group btn-group-sm">
                        <asp:Button ID="thumbsup" runat="server" Text="点赞" class="btn btn-default glyphicon glyphicon-thumbs-up"  OnClick="thumbsup_Click"></asp:Button>
                        <asp:Button ID="attention"  runat="server" Text="关注" class="btn btn-default glyphicon glyphicon-heart-empty" OnClick="attention_Click"/>
                        <asp:Button ID="collect"  runat="server" Text="收藏" class="btn btn-default glyphicon glyphicon-heart-empty" OnClick="collect_Click"/>
                        <asp:Button ID="gift" runat="server" Text="打赏" class="btn btn-default glyphicon glyphicon-gift" OnClick="reward_Click"/>
                    </div>
                        <p></p>
                        <p></p>
                          <!--留言板-->
                        <div class="form-group">
                        <asp:Label runat="server"  for="name" style="color: #FFFFFF"></asp:Label>
                        <textarea class="form-control" rows="4" id="message" runat="server"></textarea>
                        <p></p>
                        
                        <asp:Button  runat="server" Text="发送留言" class="btn btn-info" ID="tijiaobt" OnClick="tijiaobt_Click"/>
                    </div>


                    </form>
                    <p></p>



                  
                    
                </div>
                <div class="col-md-2 "></div>
            </div>

</body>
</html>
