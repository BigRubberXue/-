<%@ Page Language="C#" AutoEventWireup="true" CodeFile="collect.aspx.cs" Inherits="collect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
        <link href="css/style-1.css" rel="stylesheet" />
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
     <!-- Custom Theme files -->
     <meta name="viewport" content="width=device-width, initial-scale=1"/>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <meta name="keywords" content="" />
    <!--<link href='http://fonts.googleapis.com/css?family=Asap:400,700,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'> -->
     <!---- start-smoth-scrolling---->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <link href="css/button_broder_wei.css" rel="stylesheet" />
        <script type="text/javascript">
                jQuery(document).ready(function($) {
                    $(".scroll").click(function(event){		
                        event.preventDefault();
                        $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
                    });
                });
        </script>
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
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
             <div class="row clearfix" style ="position :fixed ;width :91%;z-index :9999 ">
                    <div class="col-md-12 column">
                        <nav class="navbar navbar-default" role="navigation">
                            <div class="navbar-header">
                                <!---修改-->
                                 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="main.aspx">兴趣圈首页</a>
                            </div>
                            
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav">
                                    <li class="active">
                                         <a href="person_M.aspx?user_id=<%=my_user_id%>">个人中心</a>
                                    </li>
                                    <li>
                                         <a href="friend_a.aspx">好友动态</a>
                                    </li>
                                    <li>
                                         <a href="#">个人收藏</a>
                                    </li>
                            
                                </ul>
                                <!--修改结束-->
                                
                                <ul class="nav navbar-nav navbar-right">
                                    <li>
                                         <a href="#"><span></span></a>
                                    </li>
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
            <iframe  onload="Javascript:SetIFrameHeight(this)" src="./collect_show.aspx"  id="ifraMain" name="ifraMain"  style="border:hidden;visibility:inherit; width:100%;z-index:100;margin-top:70px"> </iframe>
        </div>
    </form>
</body>
</html>
