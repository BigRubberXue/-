<%@ Page Language="C#" AutoEventWireup="true" CodeFile="person_new.aspx.cs" Inherits="person_new" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server" >
        <title>modify</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
            <link href="css/style-1.css" rel="stylesheet" />
        <!-- Custom Theme files -->
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
         <!-- Custom Theme files -->
         <meta name="viewport" content="width=device-width, initial-scale=1"/>
         <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
         <meta name="keywords" content=""/>
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
         <!---- start-smoth-scrolling---->
        </head>
<body  style ="background-image :url(img/个人信息北京.png);background-repeat :no-repeat ;background-size :100% ;background-attachment :fixed  ">
     
    <!--导航栏-->

<form id="form2" runat="server">
  <!--neirong-->
 
      <div class ="row "  style="height :800px" >
          <div class ="col-md-2 "> </div>

             <div class ="col-md-3 ">
                 <img src="images/img1.jpg" style="height :400px" />
             </div>
          <div class ="col-md-1 ">
          </div>
             <div class ="col-md-6 ">
                 <!-- <button type="button" id="sub" class="btn btn-default glyphicon glyphicon-plus" style="background-color:gray ;color: rgb(255, 255, 255);font-size :28px"">确认修改</button>-->
                 <asp:Button ID="Button1" runat="server" Text="确认修改" class="btn btn-default glyphicon glyphicon-plus" style="background-color:gray ;color: rgb(255, 255, 255);font-size :28px" OnClick="sub_Click"/>
                 <ul class="address">
              
              <li>
                      <ul class="address-text">
                          <li><b>昵称</b></li>
                      <li>
                          <asp:TextBox ID="TextBox5" runat="server"  BorderColor="White" BorderStyle="None"></asp:TextBox>
                      </li>
                      </ul>
                  </li>
              
                 
                  <li>
                      <ul class="address-text">
                          <li><b>联系方式 </b></li>
                          <li>
                              <asp:TextBox ID="TextBox2" runat="server" BorderColor="White" BorderStyle="None"></asp:TextBox>
                  </li>
                      </ul>
                  </li>
                  <li>
                      <ul class="address-text">
                          <li><b>地址 </b></li>
                          <li>
                              <asp:TextBox ID="TextBox1" runat="server" BorderColor="White" BorderStyle="None"></asp:TextBox></li>
                      </ul>
                  </li>
                  <li>
                      <ul class="address-text">
                          <li><b>邮箱 </b></li>
                          <li>
                              <asp:TextBox ID="TextBox3" runat="server" BorderColor="White" BorderStyle="None"></asp:TextBox></li>
                      </ul>
                  </li>
                  <li>
                      <ul class="address-text">
                          <li><b>职业 </b></li>
                          <li>
                              <asp:TextBox ID="TextBox4" runat="server" BorderColor="White" BorderStyle="None"></asp:TextBox></li>
                      </ul>
                  </li>
                  
              </ul>
          </div>                                 
             </div>     
</form>
</body>
</html>
