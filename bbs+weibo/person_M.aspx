<%@ Page Language="C#" AutoEventWireup="true" CodeFile="person_M.aspx.cs" Inherits="person_M" %>
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
     <meta name="keywords" content="">
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
<body  style ="background-image :url(img/个人信息北京.png);background-repeat :no-repeat ;background-size :100% ;background-attachment :fixed  ">
        <div class="container">
             <div class="row clearfix" style ="position :fixed ;width :91%;z-index :9999 ">
                    <div class="col-md-12 column">
                        <nav class="navbar navbar-default" role="navigation">
                            <div class="navbar-header">
                                <!---修改-->
                                 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="main.aspx">兴趣圈首页</a>
                            </div>
                            
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav">
                                    <li class="active">
                                         <a>个人中心</a>
                                    </li>
                                    <li>
                                         <a href="friend_a.aspx">好友动态</a>
                                    </li>
                                    <li>
                                         <a href="collect.aspx">个人收藏</a>
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
    <form id="form1" runat="server" >
    <!--neirong-->
       
    <div class ="row "  style="height :800px;margin-top:60px" >
        <div class ="col-md-2 "> </div>

           <div class ="col-md-3 ">
               <img src="images/img1.jpg" style="height :400px" />
           </div>
        <div class ="col-md-1 ">
        </div>
           <div class ="col-md-6 ">
               <!-- <button type="button" id="bu" class="btn btn-default glyphicon glyphicon-plus" style="background-color:gray ;color: rgb(255, 255, 255);font-size :28px"">修改资料</button> -->
               <asp:Button ID="Button1" class="btn btn-default glyphicon glyphicon-plus" style="background-color:gray ;color: rgb(255, 255, 255);font-size :28px" runat="server" Text="修改资料"  OnClick="modify_Click"/>
               <ul class="address">
            
            <li>
                    <ul class="address-text">
                        <li><b>昵称</b></li>
                    <li><asp:Label ID="Label1" runat="server" Text="Label" BorderColor="White" BorderStyle="None">王小妹</asp:Label>
                    </li>
                    </ul>
                </li>
                <li>
                    <ul class="address-text">
                        <li><b>用户名</b></li>
                    <li><asp:Label ID="Label2" runat="server" Text="Label" BorderColor="White" BorderStyle="None">noab</asp:Label>
                    </li>
                        </ul>
                </li>
                <li>
                    <ul class="address-text">
                        <li><b>粉丝数 </b></li>
                        <li>
            <asp:Label ID="Label3" runat="server" Text="Label">789</asp:Label></li>
                    </ul>
                </li>
                <li>
                    <ul class="address-text">
                        <li><b>联系方式 </b></li>
                        <li>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></li>
                    </ul>
                </li>
                <li>
                    <ul class="address-text">
                        <li><b>地址 </b></li>
                        <li>
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></li>
                    </ul>
                </li>
                <li>
                    <ul class="address-text">
                        <li><b>邮箱 </b></li>
                        <li>
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></li>
                    </ul>
                </li>
                <li>
                    <ul class="address-text">
                        <li><b>职业 </b></li>
                        <li>
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></li>
                    </ul>
                </li>
                <li>
                    <ul class="address-text">
                        <li><b>钢镚儿</b></li>
                        <li>
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></li>
                    </ul>
                </li>
                
            </ul>
        </div>
    </div>
       <iframe  onload="Javascript:SetIFrameHeight(this)" src="./new_show.aspx"  id="ifraMain" name="ifraMain"  style="border:hidden;visibility:inherit; width:100%;z-index:100;"> </iframe>
    </form>
    
</body>
</html>
