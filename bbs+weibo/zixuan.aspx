<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zixuan.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>选择自选题</title>
    <link rel="stylesheet" type="text/css" href="css/zixuan.css" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="bj">
         <div class="zuo"></div>
         <div class="zj" style="border:none; width: 711px;background-color:rgba(0,0,0,.1)">
             <span style="font-size:30px;font-weight:500;font-family:'Microsoft JhengHei UI';color:aliceblue;margin-top:15px;display:inline-block">欢迎来到兴趣圈考试PART！</span><br /><br /><br />
             <span style="font-size:20px;color:black;">请选择2个擅长的科目答题吧！</span> 

             <br />
             <table class="auto-style1">
                 <tr>
                     <td class="auto-style4">
                         <label >
                         <asp:CheckBox ID ="CheckBox5" runat="server" Checked="False" Visible="true"/>
                         <div style="font-size :30px" class="auto-style3">游戏</div> 
                         </label>
                     </td>
                     <td class="auto-style5">
                         <label>
                             <asp:CheckBox ID="CheckBox1" runat="server" Checked="False" OnCheckedChanged="CheckBox1_CheckedChanged"/>
                             <div style="width:70%;height:100%;" class="checkbox">动作射击</div>
                         </label>
                     </td>
                     <td class="auto-style5">
                         <label>
                             <asp:CheckBox ID="CheckBox2" runat="server" Checked="False" OnCheckedChanged="CheckBox2_CheckedChanged"/>
                             <div style="width:70%;height:100%;" class="checkbox">冒险格斗</div>
                         </label>
                     </td>
                     
                     <td class="auto-style5">
                         <label>
                             <asp:CheckBox ID="CheckBox3" runat="server" Checked="False" OnCheckedChanged="CheckBox3_CheckedChanged"/>
                             <div style="width:70%;height:100%;" class="checkbox">模拟策略</div>
                         </label>
                     </td>
                     <td class="auto-style7">
                         <label>
                             <asp:CheckBox ID="CheckBox4" runat="server" Checked="False" OnCheckedChanged="CheckBox4_CheckedChanged"/>
                             <div style="width:70%;height:100%;" class="checkbox">音乐体育</div>
                         </label>
                     </td>
    
                 </tr>
                 <tr>
                    <td class="auto-style4">
                         <label >
                         <asp:CheckBox ID ="CheckBox6" runat="server" Checked="False" Visible="true"/>
                         <div style="font-size :30px" class="auto-style3">影视</div> 
                         </label>
                     </td>
                     <td class="auto-style5">
                         <label>
                             <asp:CheckBox ID="CheckBox7" runat="server" Checked="False" OnCheckedChanged="CheckBox7_CheckedChanged"/>
                             <div style="width:70%;height:100%;" class="checkbox">纪录片</div>
                         </label>
                     </td>
                     <td class="auto-style5">
                         <label>
                             <asp:CheckBox ID="CheckBox8" runat="server" Checked="False" OnCheckedChanged="CheckBox8_CheckedChanged"/>
                             <div style="width:70%;height:100%;" class="checkbox">电影</div>
                         </label>
                     </td>
                     
                     <td class="auto-style5">
                         <label>
                             <asp:CheckBox ID="CheckBox9" runat="server" Checked="False" OnCheckedChanged="CheckBox9_CheckedChanged"/>
                             <div style="width:70%;height:100%;" class="checkbox">电视剧</div>
                         </label>
                     </td>
                    
                 </tr>
                 <tr>
                     <td class="auto-style4">
                         <label >
                         <asp:CheckBox ID ="CheckBox10" runat="server" Checked="False" Visible="true"/>
                         <div style="font-size :30px" class="auto-style3">科技</div> 
                         </label>
                     </td>
                     <td class="auto-style5">
                         <label>
                             <asp:CheckBox ID="CheckBox11" runat="server" Checked="False" OnCheckedChanged="CheckBox11_CheckedChanged" />
                             <div style="width:70%;height:100%;" class="checkbox">数学</div>
                         </label>
                     </td>
                     <td class="auto-style5">
                         <label>
                             <asp:CheckBox ID="CheckBox12" runat="server" Checked="False" OnCheckedChanged="CheckBox12_CheckedChanged"/>
                             <div style="width:70%;height:100%;" class="checkbox">军事</div>
                         </label>
                     </td>
                     
                     <td class="auto-style5">
                         <label>
                             <asp:CheckBox ID="CheckBox13" runat="server" Checked="False" OnCheckedChanged="CheckBox13_CheckedChanged"/>
                             <div style="width:70%;height:100%;" class="checkbox">数码科技</div>
                         </label>
                     </td>
                 
                 </tr>
                 <tr>
                     <td class="auto-style4">
                         <label >
                         <asp:CheckBox ID ="CheckBox14" runat="server" Checked="False" Visible="true"/>
                         <div style="font-size :30px" class="auto-style3">动画</div> 
                         </label>
                     </td>
                     <td class="auto-style5">
                         <label>
                             <asp:CheckBox ID="CheckBox15" runat="server" Checked="False" OnCheckedChanged="CheckBox15_CheckedChanged"/>
                             <div style="width:70%;height:100%;" class="checkbox">国创</div>
                         </label>
                     </td>
                     <td class="auto-style5">
                         <label>
                             <asp:CheckBox ID="CheckBox16" runat="server" Checked="False" OnCheckedChanged="CheckBox16_CheckedChanged"/>
                             <div style="width:70%;height:100%;" class="checkbox">番剧</div>
                         </label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style4">&nbsp;</td>
                     <td class="auto-style5" colspan="3" style="text-align:center"><br />
                         <asp:Button ID="Button1" runat="server"  BackColor="#EEEEEE"  Font-Size="25px" ForeColor="#336699" Height="48px" Text="选择完毕，开始答题" Width="231px" Font-Bold="False" Font-Names="Microsoft JhengHei UI Light" OnClick="Button1_Click" CssClass="start" />
                        
                     </td>
                     <td class="auto-style7">&nbsp;</td>
                 </tr>
             </table>

         </div>
         <div class="you"></div>
     </div>
    </form>
</body>
</html>
