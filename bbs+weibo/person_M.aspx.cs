using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class person_M : System.Web.UI.Page
{
    SqlConnection Con = null;
    SqlCommand cmd = null;
    string user_id=null;
    
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
    
    protected void Page_Load(object sender, EventArgs e)
    {
        user_id = Request.QueryString["user_id"];
        Label5.Text = Session["name"].ToString();
        string s = "select * from person_user where user_id = '"+ user_id +"'";
        string s_n = "select * from [user] where user_id = '" + user_id + "'";
        SqlDataReader dr = Sqlconnnect(s);
        dr.Read();

        string phone = dr["phone"].ToString();
        string mail = dr["mail"].ToString();
        string job = dr["job"].ToString();
        string address = dr["address"].ToString();

        dr = Sqlconnnect(s_n);
        dr.Read();
        string name = dr["name"].ToString();
        string username = dr["username"].ToString();
        int attention = int.Parse(dr["attention"].ToString());
        string gift = dr["gift"].ToString();
        /*
         显示用户名  昵称  关注数  
                地址  电话  邮箱  职业 
          并提供修改除用户名 关注之外的信息
         */
        
        Label6.Text = address;
        Label4.Text = phone;
        Label8.Text = job;
        Label7.Text = mail;
        Label1.Text = name;
        Label2.Text = username;
        Label3.Text = attention.ToString();
        Label9.Text = gift;
        Con.Close();
        
        Con.Dispose();
    }

    protected void modify_Click(object sender, EventArgs e)
    {
        Response.Redirect("person_M_modify.aspx?user_id="+ user_id + "");
    }

    protected void return_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }

    
}