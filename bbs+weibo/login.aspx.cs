using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
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
        
    }
    protected void login_btn_Click(object sender, EventArgs e)
    {
        string str = "select * from [user] where username='" + TextBox1.Text.Trim() + "' and password='" + TextBox2.Text.Trim() + "'";    //SQL语句将前台中TextBox中的存到数据库的字段中       
        SqlDataReader dr = Sqlconnnect(str);
        if (dr.Read())//判断SQL执行登录是否成功，成功执行下面语句
        {
            Session["name"] = dr["name"].ToString(); //将用户名保存到SESSION中
            Session["user_id"] = dr["user_id"].ToString();
            Con.Close(); //关闭数据库链接
            
            Con.Dispose();
            Response.Redirect("main.aspx");//成功后页面跳转
        }
       

    }



    protected void login_btn_Click1(object sender, EventArgs e)
    {

    }
}