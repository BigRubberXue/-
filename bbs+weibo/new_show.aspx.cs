using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class new_show : System.Web.UI.Page
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
        string s="select * from new where user_id = '"+Session["user_id"].ToString()+"' and already = 0";
        SqlDataReader dr = Sqlconnnect(s);
        Response.Write("<div class=\"row\"><div class =\"col-lg-2\"></div><div class=\"col-lg-8 \">");
        while (dr.Read()) {
            Response.Write("<div class=\"panel panel-info\">");
            Response.Write("<div class=\"panel-body\"><h3 class=\"panel - title\">");
            Response.Write(dr["news"].ToString());
            Response.Write("</h3></div></div>");
        }
        Response.Write("</div></div>");
        dr.Close();
        s = "update new set already =1 where user_id = '" + Session["user_id"].ToString() + "' ";
        cmd = Sql_cmd(s);
        cmd.ExecuteNonQuery();
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
        /*
         
         
         */
    }

}