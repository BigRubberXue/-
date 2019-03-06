using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class person_M_modify : System.Web.UI.Page
{
    SqlConnection Con = null;
    SqlCommand cmd = null;

    public string user_id = null;
    public string address =null;
    public string phone = null;
    public string mail = null;
    public string job = null;
    public string name = null;
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
        user_id = Request.QueryString["user_id"];
        string s = "select * from person_user where user_id = '" + user_id + "';";
        string s_n = "select * from [user] where user_id = '" + user_id + "';";
        
        SqlDataReader dr = Sqlconnnect(s);
        dr.Read();
        //基本信息1
        address = dr["address"].ToString();
        phone = dr["phone"].ToString();
        mail = dr["mail"].ToString();
        job = dr["job"].ToString();
        Con.Close();
        dr = Sqlconnnect(s_n);
        dr.Read();
        //基本信息2
        name = dr["name"].ToString();
        string username = dr["username"].ToString();
        int attention = int.Parse(dr["attention"].ToString());
        Con.Close();
        Con.Dispose();
    }


    protected void sub_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox1.Text.Trim() != "") { address = TextBox1.Text.Trim(); }
            if (TextBox2.Text.Trim() != "") { phone = TextBox2.Text.Trim(); }
            if (TextBox3.Text.Trim() != "") { mail = TextBox3.Text.Trim(); }
            if (TextBox4.Text.Trim() != "") { job = TextBox4.Text.Trim(); }
            if (TextBox5.Text.Trim() != "") { name = TextBox5.Text.Trim(); }
            string s = "update person_user set address = '"+address+"', phone = '"+phone +"', mail = '"+mail+"', job = '"+job+"' where user_id = '"+Request.QueryString["user_id"]+"'";
            string s_user = "update [user] set name = '" + name + "'where user_id = '" + Request.QueryString["user_id"] + "'";
            Response.Write(s);
            Response.Write(s_user);
            SqlCommand cmd = Sql_cmd(s);
            cmd.ExecuteNonQuery();
            cmd = Sql_cmd(s_user);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('完成更新')</script>");
        }
        catch (Exception)
        {
            Response.Write("<script>alert('更新失败')</script>");

        }
        finally {

            Con.Close();
            Con.Dispose();
            Response.Redirect("person_M.aspx?user_id="+ Request.QueryString["user_id"] +"");
        }
        

    }
}