<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exam.aspx.cs" Inherits="WebApplication2.exam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>兴趣圈晋级考试</title>
    <link rel="stylesheet" type="text/css" href="css/exam.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div class="rule">
            <ul class="gz">
                <li>
                    <a href="#">答题规则</a>
                    <p>请在20分钟内完成答题。<br />  总分超过36分即可成为正式会员。 <br />答题总共分为社区规范题和自选题。</p>
                </li>
                <li>
                    <a href="#">相关帮助</a>
                    <p>如果您对题目有任何疑问，请截图后发邮件至help@xingququan.tv</p>
                </li>
                <li>
                    <a href="#">考试剩余时间</a>

                </li>
            </ul>
        </div>

        <div class="top">
            <div class="zi"></div>
        </div>

        <div class="zj1" >
            <div id="zj_tips1" runat="server">
                <a href="#">卷一：社区规范题（第一部分）</a>
                <p>答完这一部分即可进入下一部分答题，总计20题，共40分。</p>
            </div>
            <div id="zj_tips2" runat="server">
                <a href="#">卷二：自选题（第二部分）</a>
                <p>答完这一部分即可进入交卷，总计10题，共20分。</p>
            </div>

            <div id="ti1" runat="server">
                <asp:DataList ID="DataList1" runat="server"  Width="720px" Border="1px solid" BorderColor="#cac5c5" DataKeyField="que_content" >
                        <ItemStyle BorderColor="#CCCCCC" Height="220px" ForeColor="dimgray"  />
                        <ItemTemplate >
                           <div class="timu">
                            <asp:Label ID="Label1" runat="server" Height="20px" Width="20px" Font-Size="16px" Font-Bold="true"  ForeColor="Gray" ></asp:Label>
                            <%#DataBinder.Eval(Container.DataItem,"que_content")%>
                            </div>
                            <table style="width: 720px; font-size: 14px;color:dimgray;padding-left:40px;">
                              <tr>
                                    <td rowspan="4" style="width: 42px">
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="98px" Font-Size="9pt">
                                            <asp:ListItem>A</asp:ListItem>
                                            <asp:ListItem>B</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>D</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                    <td colspan="2" >
                                        <%#DataBinder.Eval(Container.DataItem, "optionA")%>
                                    </td> .
                                </tr>
                                <tr>
                                    <td colspan="2">
                                    <%#DataBinder.Eval(Container.DataItem, "optionB")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                    <%#DataBinder.Eval(Container.DataItem, "optionC")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                    <%#DataBinder.Eval(Container.DataItem, "optionD")%>
                                    </td>
                                </tr>
                          </table>
                           <div class="timu">
                            <asp:Label ID="lb2" runat="server" Height="30px" Width="20px" Font-Size="16px" Font-Bold="true"  ForeColor="Gray" ></asp:Label>
                            <%#DataBinder.Eval(Container.DataItem,"answer")%>
                            </div>
                            
                        </ItemTemplate>
                    </asp:DataList>
            

            </div>
            <div id="ti2" runat="server">
                <asp:DataList ID="DataList2" runat="server"  Width="720px" Border="1px solid" BorderColor="#cac5c5" DataKeyField="que_id" >
                        <ItemStyle BorderColor="#CCCCCC" Height="240px" ForeColor="dimgray"  />
                        <ItemTemplate >
                           <div class="timu">
                            <asp:Label ID="Label3" runat="server" Height="30px" Width="20px" Font-Size="16px" Font-Bold="true"  ForeColor="Gray" ></asp:Label>
                            <%#DataBinder.Eval(Container.DataItem,"que_content")%>
                            </div>
                            <table style="width: 720px; font-size: 14px;color:dimgray">
                             <tr>
                                    <td rowspan="4" style="width: 42px">
                                        <asp:RadioButtonList ID="rb" runat="server" Height="98px" Font-Size="9pt">
                                            <asp:ListItem>A</asp:ListItem>
                                            <asp:ListItem>B</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>D</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                    <td >
                                        <%#DataBinder.Eval(Container.DataItem, "optionA")%>
                                    </td> 
                                    <caption>
                                        .
                                    </caption>
                                </tr>
                                <tr>
                                    <td>
                                    <%#DataBinder.Eval(Container.DataItem, "optionB")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    <%#DataBinder.Eval(Container.DataItem, "optionC")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    <%#DataBinder.Eval(Container.DataItem, "optionD")%>
                                    </td>
                                </tr>
                          </table>
                           <div class="timu">
                            <asp:Label ID="lb4" runat="server" Height="30px" Width="20px" Font-Size="16px" Font-Bold="true"  ForeColor="Gray" ></asp:Label>
                            <%#DataBinder.Eval(Container.DataItem,"answer")%>
                            </div>
                            
                        </ItemTemplate>
                    </asp:DataList>
            

            </div>

            <div id="btn1" runat="server">
                <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" padding-left="100px" BorderColor ="#66CCFF" BorderStyle="Solid" Font-Bold="True" Font-Size="25px" ForeColor="#000066" Height="48px" OnClick="Button1_Click" Text="下一部分" Width="231px" />
            </div>
            <div id="btn2" runat="server">
                <asp:Button ID="Button2" runat="server" BackColor="#99CCFF" padding-left="100px" BorderColor ="#66CCFF" BorderStyle="Solid" Font-Bold="True" Font-Size="25px" ForeColor="#000066" Height="48px" OnClick="Button2_Click" Text="交卷" Width="231px" />
            </div>

        </div>
       </div>
    </form>
</body>
</html>
