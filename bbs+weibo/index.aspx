<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     
</head>
<body>
    <p style="font-size:100px;width: 100%;display: block;line-height: 100px;text-align: center;">这是一个网站</p>
    <form id="form1" runat="server">
        <div style="width:200px;margin: 10px auto;" >
           <asp:Button style="font-size:50px;background-color:yellow;border-radius:15px; border-width: 0;width:200px;height:100px;" 
               ID="Login_button" runat="server" Text="登陆" OnClick= "Login_button_Click" /> 
        </div>
        <div style="width:200px;margin: 10px auto;">
            <asp:button style="font-size:50px;border-radius:15px; border-width: 0;width:200px;height:100px;" 
                Id="registered_button" runat="server" Text="注册" OnClick= "registered_button_Click"> </asp:button>
        </div>
        <div style="width:200px;margin: 10px auto;">
            <asp:button style="font-size:50px;border-radius:15px; border-width: 0;width:200px;height:100px;"
                id="surf_button" runat="server" Text="浏览" OnClick= "surf_button_Click"> </asp:button>
        </div>
        
    </form>
</body>
</html>
