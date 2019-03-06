<%@ Page Language="C#" AutoEventWireup="true" CodeFile="score.aspx.cs" Inherits="WebApplication2.score" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>兴趣圈考试结果</title>
    <!--<link rel="stylesheet" type="text/css" href="css/score.css" />-->
    <style type="text/css">
        * {
    margin: 0px;
    padding: 0px;
}

.top {
    height: 790px;
    background-image: url(../image/bj.png );
    background-size: 100% auto;
    background-repeat: no-repeat;
    background-color: rgba(221, 241, 252, 0.60);
}

.zi {
    width: 600px;
    height: 480px;
    background: no-repeat;
    position: absolute;
    background-size: 100% 100%;
    background-image: url(../image/8.png );
    margin-left: 460px;
    margin-top: 95px;
}

.tu {
    background-image: url(../image/.png );
    background-repeat: no-repeat;
    margin-left: 370px;
    height: 0px;
}

.zuo {
    float: left;
    width: 300px;
    height: 400px;
    margin-left: 300px;
    margin-top: 200px;
    background-image: url(../image/z.png );
    background-repeat: no-repeat;
}

.you {
    float: right;
    width: 300px;
    height: 400px;
    margin-right: 160px;
    margin-top: 210px;
    background-image: url(../image/y.png );
    background-repeat: no-repeat;
}

.cg {
    width: 400px;
    height: 90px;
    background-image: url(../image/cg.png);
    background-repeat: no-repeat;
    margin-left: 115px;
    margin-top: 130px;
}

.a {
    margin-left: 50px;
    margin-top: 100px;
}

.b {
    margin-left: 50px;
    float: left;
}

.gjz {
    width: 200px;
    height: 100px;
    float: left;
    background-image: url(../image/xb.png);
    background-repeat: no-repeat;
    margin-left: 50px;
    margin-top: 0px;
}

.bjc {
    width: 300px;
    height: 220px;
    float: right;
    background-image: url(../image/bjc.png);
    background-repeat: no-repeat;
    margin-left: 50px;
    margin-top: 40px;
}

.y {
    float: right;
    width: 300px;
    height: 400px;
    margin-right: 160px;
    margin-top: 250px;
    background-image: url(../image/xuexi.png );
    background-repeat: no-repeat;
}

.sb {
    width: 400px;
    height: 90px;
    background-image: url(../image/yh.png);
    background-repeat: no-repeat;
    margin-left: 115px;
    margin-top: 130px;
}

.bhg {
    width: 290px;
    height: 90px;
    float: left !important;
    background-image: url(../image/7.png);
    background-repeat: no-repeat;
    margin-left: 60px;
    margin-top: 30px;
    margin-bottom: 50px;
}

.ai {
    width: 250px;
    height: 150px;
    float: right;
    background-image: url(../image/ai.png);
    background-repeat: no-repeat;
    margin-right: 0px;
    margin-top: 50px;
}

.lj {
    margin-left: 50px;
    margin-top: 100px;
    float: left !important;
}
.c{
    margin-left: 80px;
    margin-top: 100px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="top">
 <div id="div1" class="zuo" runat ="server" ></div>
       <div  id="div2" class="zi" runat ="server">
           <div id="div3" class="cg" runat="server" ></div>
                <asp:Label ID="Label1" runat="server" Text="您已成功通过考试，获得可爱的sy一枚" CssClass ="a"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="关键字:" CssClass="b"></asp:Label>
                <div id="div6" class="bjc" runat="server"></div>            
                <div id="div5" class="gjz" runat="server" ></div>
                <a href="login.aspx" class="lj">点我返回</a>
            </div>
          <div id="div4" class="you" runat ="server"></div>   


            <div id="div7" class="y" runat="server" ></div>
            <div id="div8" class="zi" runat="server">
                 <div id="div9" class="sb" runat="server" ></div>
                <asp:Label ID="Label4" runat="server" Text="很遗憾，您没有通过考试喔" CssClass="c"></asp:Label>
                <asp:Label ID="Label5" runat="server" Text=""></asp:Label> 
                <div id="div10" class="bhg" runat="server" > <a href="zixuan.aspx" class="lj">点击此处重新考试</a></div>
                <div id="div11" class="ai" runat="server">
                 </div>
                </div>
        </div>
    </form>
</body>
</html>
