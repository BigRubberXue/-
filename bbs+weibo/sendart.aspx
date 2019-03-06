<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sendart.aspx.cs" Inherits="sendart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>好友动态</title>
           <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"/>  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
 
</head>
<body  style="overflow:hidden;background:transparent">
    <form  runat="server" id="form1">
    		<div class="row clearfix">
				
				<div class="col-md-5 column">
                    <a>文章题目</a>
                    <asp:TextBox ID="article_title" runat="server" class="form-control" rows="4"></asp:TextBox>
                    <p></p>
                    <textarea class="form-control" rows="11" runat="server" id="article" style="resize:none"></textarea>
                    <p></p>
                    <p></p>
                    <div> 
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" ForeColor="#3366FF">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>          
                    <asp:Button ID="submit" runat="server" class="btn btn-default btn-info" Text="上传文章" onclick="Submit_Click"/>
                   </div>
                    <asp:DataList ID="DataList1" runat="server"></asp:DataList>
				</div>
				
			</div>

    </form>

</body>
</html>
