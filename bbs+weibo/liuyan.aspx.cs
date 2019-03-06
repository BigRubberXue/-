using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class liuyan : System.Web.UI.Page
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
        
        string s = "select message,[user].name from message join [user] on message.user_id =[user].user_id where article_id = '"+ Request.QueryString["article_id"] + "'";
        SqlDataReader dr = Sqlconnnect(s);
        Response.Write("<div class=\"row\"><div class =\"col-lg-2\"></div><div class=\"col-lg-8 \">");
        while (dr.Read()) {
            Response.Write("<div class=\"panel panel-info\"><div class=\"panel-heading\">");
            Response.Write("<h3 class=\"panel-title\">");
            Response.Write("用户:  "+dr["name"].ToString());
            Response.Write("</h3></div><div class=\"panel-body\">");
            Response.Write(dr["message"].ToString());
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