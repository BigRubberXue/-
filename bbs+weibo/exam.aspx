<%@ Page Language="C#" AutoEventWireup="true" CodeFile="exam.aspx.cs" Inherits="WebApplication2.exam" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>兴趣圈晋级考试</title>
    <link rel="stylesheet" type="text/css" href="css/exam.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div class="rule" id="rule">
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
                    <a href="#">考试时间</a><br />
                    <!-- <span style="color:deeppink;font-size:40px;font-family:MingLiU_HKSCS-ExtB" id="time" runat="server"></span> -->
                    <asp:Label ID="Tm" runat="server" WText="" CssClass="tm"></asp:Label>
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
            <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource3"  Width="720px" Border="1px solid" BorderColor="#cac5c5">
                <ItemStyle BorderColor="#CCCCCC" Height="200px" ForeColor="dimgray"  />
                <ItemTemplate >
                   <table>
                        <tr>
                            <td style="padding-left:40px; padding-bottom:6px;" >
                                <asp:Label ID="Label8" runat="server" Text='<%# "第"+((Container.ItemIndex+1)+"题："+DataBinder.Eval(Container.DataItem,"que_content")) %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td  style="padding-left:50px;">
                                <asp:RadioButton ID="rb1" runat="server" GroupName="a" Text='<%# "A:"+DataBinder.Eval(Container.DataItem,"optionA") %>'   />
                                <br />
                                <asp:RadioButton ID="rb2" runat="server" GroupName="a" Text='<%# "B:"+DataBinder.Eval(Container.DataItem,"optionB") %>' />
                                <br />
                                <asp:RadioButton ID="rb3" runat="server" GroupName="a" Text='<%# "C:"+DataBinder.Eval(Container.DataItem,"optionC") %>' />
                                <br />
                                <asp:RadioButton ID="rb4" runat="server" GroupName="a" Text='<%# "D:"+DataBinder.Eval(Container.DataItem,"optionD") %>'  />
                            </td>
                        </tr>
                        <tr>
                            <td class="a1" runat="server">
                                <asp:Label ID="lb1" runat="server" Text='<%# "正确答案："+DataBinder.Eval(Container.DataItem,"answer") %>' ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [que_content], [optionA], [optionB], [optionC], [optionD], [answer] FROM [questions] WHERE ([que_type] = @que_type)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="社区规范题" Name="que_type" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                       
        </div>

            <div id="ti2" runat="server" >
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1"  Width="720px" Border="1px solid" BorderColor="#cac5c5">
                   <ItemStyle BorderColor="#CCCCCC" Height="200px" ForeColor="dimgray"  />
                    <ItemTemplate>
                        <table>
                        <tr>
                            <td style="padding-left:40px; padding-bottom:6px;" >
                                <asp:Label ID="Label8" runat="server" Text='<%# "第"+((Container.ItemIndex+1)+"题："+DataBinder.Eval(Container.DataItem,"que_content")) %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="padding-left:50px;" >
                                <asp:RadioButton ID="rb5" runat="server" GroupName="a" Text='<%# "A:"+DataBinder.Eval(Container.DataItem,"optionA") %>'   />
                                <br />
                                <asp:RadioButton ID="rb6" runat="server" GroupName="a" Text='<%# "B:"+DataBinder.Eval(Container.DataItem,"optionB") %>' />
                                <br />
                                <asp:RadioButton ID="rb7" runat="server" GroupName="a" Text='<%# "C:"+DataBinder.Eval(Container.DataItem,"optionC") %>' />
                                <br />
                                <asp:RadioButton ID="rb8" runat="server" GroupName="a" Text='<%# "D:"+DataBinder.Eval(Container.DataItem,"optionD") %>'  />
                            </td>
                        </tr>
                        <tr>
                            <td class="a1" runat="server">
                                <asp:Label ID="lb2" runat="server" Text='<%# "正确答案："+DataBinder.Eval(Container.DataItem,"answer") %>' ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    </ItemTemplate>
            </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [que_content], [optionA], [optionB], [optionC], [optionD], [answer] FROM [questions] WHERE ([que_type] = @que_type1) or ([que_type] = @que_type2)">
                    <SelectParameters>
                        <asp:SessionParameter Name="que_type1" SessionField="zxt1" Type="String" />
                        <asp:SessionParameter Name="que_type2" SessionField="zxt2" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
     
            <div id="btn1" runat="server">
                <asp:Button ID="Button1" runat="server" BackColor="#99CCFF"  padding-left="100px" BorderColor ="#66CCFF" BorderStyle="Solid" Font-Bold="True" Font-Size="25px" ForeColor="#000066" Height="48px" Text="下一部分" Width="231px" OnClick="Button1_Click" OnClientClick="btn1_OnClientClick();return false"/>
            </div>
            <div id="btn2" runat="server">
                <asp:Button ID="Button2" runat="server" BackColor="#99CCFF" padding-left="100px" BorderColor ="#66CCFF" BorderStyle="Solid" Font-Bold="True" Font-Size="25px" ForeColor="#000066" Height="48px" OnClick="Button2_Click" Text="交卷" Width="231px" />
            </div>

        </div>
       </div>
    </form>
        <script>
            var rule = document.getElementById("rule");
            window.addEventListener("scroll", function (e) {
                if( this.document.documentElement.scrollTop < 373){
                    rule.style.float = "right";
                    rule.style.position = "static";
                    rule.style.marginTop = "393px";
                    rule.style.marginRight = "100px";
                }else if (rule.offsetTop - this.document.documentElement.scrollTop < 20) {
                    rule.style.position = "fixed";
                    rule.style.top = 20;
                    rule.style.right = 100;
                    rule.style.float = "right";
                    rule.style.margin = 0;
                }  


            });
                //  alert(rule.offsetTop);元素距离顶部的高度
            var stop = '0:0';
            var init='';
            init = getCookie('Tm');
               if (init != null) {
                   var total = 20;
                   var sec = '00';
                   var min = total.toString();
               }
               else {
                   var slist = init.split(':');
                   var min=slist[0];
                   var sec=slist[1];
               }
		var nu = document.getElementById('Tm');
		nu.innerText = min  + ':' + sec;
		var text = nu.innerText; 
            let dao = setInterval('timer()', 1000);
		function timer(){
			var nu = document.getElementById('Tm');
			var text = nu.innerText;
			if(text === stop){
				clearInterval(dao);
                alert("时间到");
                window.open('zixuan.aspx');
			}
			if(sec === '00' || sec === 0){
				sec = '59';
				min -= 1;
			}else{
				sec -= 1;	
			}
            nu.innerText = min + ':' + sec;
            document.cookie = "Tm=" + nu.innerText;
            } 
           function getCookie(Tm) {
                var cookies = document.cookie;
                var list = cookies.split(";");
                for (var i = 0; i < list.length; i++) {
                    var arr = list[i].split("=");
                    if (arr[0] == Tm)
                        return decodeURIComponent(arr[1]);
                }
               return "";
            }
            function btn1_OnClientClick() {
                var zj_tips2 = document.getElementById('zj_tips2');
                var zj_tips1=document.getElementById('zj_tips1');
                var btn1=document.getElementById('btn1');
                var btn2 = document.getElementById('btn2');
                var ti1 =document.getElementById('ti1');
                var ti2 = document.getElementById('ti2');
                zj_tips2.style.display = "block";
                zj_tips1.style.display = "none";
                btn2.style.display = "block";
                btn1.style.display = "none";
                ti1.style.display = "none";
                ti2.style.display = "block";
                scrollTo(0, 0);
                return false;
            }
	</script>

</body>
</html>
