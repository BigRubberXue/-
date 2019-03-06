using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class collect_show : System.Web.UI.Page
{
    SqlConnection Con = null;
    SqlCommand cmd = null;
    public SqlDataReader Sqlconnnect(string s)
    {
        string conn = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        Con = new SqlConnection(conn);
        //打开数据库连接
        Con.Open();
        SqlCommand cmd = new SqlCommand(s, Con);//SqlCommand对象允许你指定在数据库上执行的操作的类型。
        SqlDataReader dr = cmd.ExecuteReader();//从数据库中读取数据
        return dr;
    }
    public SqlCommand Sql_cmd(string s)
    {
        string conn = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        Con = new SqlConnection(conn);
        //打开数据库连接
        Con.Open();
        cmd = new SqlCommand(s, Con);//SqlCommand对象允许你指定在数据库上执行的操作的类型。
        return cmd;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        string s = "select * from article where article.article_id in(select collect.article_id from collect where collect.user_id='"+Session["user_id"].ToString()+"')";
        SqlDataReader dr = Sqlconnnect(s);
        Response.Write("<div class=\"row\"><div class =\"col-lg-2\"></div><div class=\"col-lg-8 \">");
        while (dr.Read())
        {
            Response.Write("<div style=\"width:100%; \" class=\"panel panel-info\"><div class=\"panel-heading\">");
            Response.Write("<h3 class=\"panel-title\">");
            //Response.Write("<asp:Label runat=\"server\" Onclick=\"Article_title_click("+dr["article_id"].ToString()+ ")\">"+dr["article_title"].ToString() + "</asp:Label>");
            Response.Write("<a  target=\"_parent\" href=\"article.aspx?article_id=" + dr["article_id"].ToString() + " \">" + dr["article_title"].ToString() + "</asp:Label>");
            Response.Write("</h3></div><div class=\"panel-body\">");
            Response.Write("<asp:Label runat=\"server\" >" + dr["article"].ToString() + "</asp:Label>");
            Response.Write("</div></div>");
        }
        Response.Write("</div></div>");
        Con.Close();
        Con.Dispose();
        /*
         <div class="panel panel-info ">
            <div class="panel-heading">
                 <h3 class="panel-title">面板标题</h3>
            </div>
            <div class="panel-body">
                这是一个基本的面板
         </div>

</div>
         
         
         */
    }

     
}