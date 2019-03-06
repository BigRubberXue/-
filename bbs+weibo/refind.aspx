<%@ Page Language="C#" AutoEventWireup="true" CodeFile="refind.aspx.cs" Inherits="refind" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>            
            <p>当前用户名：<asp:Label ID="username" runat="server" Text="Label"></asp:Label></p>
            <p>密码：<asp:TextBox ID="pw" runat="server"></asp:TextBox></p>            
            <p>确认密码：<asp:TextBox ID="pw1" runat="server"></asp:TextBox></p>
        </div>
        <div>
            <asp:Button ID="refind" runat="server" Text="找回密码"  OnClick= "refind_Click"/>
        </div>
    </form>
</body>
</html>
