using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class refind : System.Web.UI.Page
{
    SqlConnection Con = null;
    SqlCommand cmd = null;
    string user_id = null;
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


    }

    protected void refind_Click(object sender, EventArgs e)
    {
        string s = "select * from user where user_id = '"+Session["user_id"].ToString() + "';";
        SqlDataReader dr = Sqlconnnect(s);
        dr.Read();
        username.Text = dr["username"].ToString();
        string pwd = dr["password"].ToString();
        string pwd_new = pw.Text.Trim();
        if (pwd == pwd_new) {
            Response.Write("<script>alert('新密码不能与旧密码相同！')</script>");
        }
        Response.Redirect("login.aspx");

        

    }
}