using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class person_new : System.Web.UI.Page
{
    SqlConnection Con = null;
    SqlCommand cmd = null;

    public string user_id = null;
    public string address = null;
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
        user_id = Session["user_id"].ToString();
       
    }
    protected void sub_Click(object sender, EventArgs e)
    {
        try
        {
            address = TextBox1.Text.Trim(); 
            phone = TextBox2.Text.Trim(); 
            mail = TextBox3.Text.Trim(); 
            job = TextBox4.Text.Trim();
            name = TextBox5.Text.Trim();
            if (name == "") {
                name = "user_" + user_id;
            }
            string s = "update person_user set address = '" + address + "', phone = '" + phone + "', mail = '" + mail + "', job = '" + job + "' where user_id = '" + user_id + "'";
            string s_user = "update [user] set name = '" + name + "'where user_id = '" + user_id+ "'";
            
            SqlCommand cmd = Sql_cmd(s);
            cmd.ExecuteNonQuery();
            cmd = Sql_cmd(s_user);
            cmd.ExecuteNonQuery();
            Con.Close();
            Con.Dispose();
         
            Response.Write("<script>alert('完成更新');location.href='zixuan.aspx'</script>");
        }
        catch (Exception)
        {
            Response.Write("<script>alert('更新失败')</script>");
            

        }
        finally
        {
           
            //Response.Write("<script>alert('信息修改完成');location.href='zixuan.aspx?user_id=" + Request.QueryString["user_id"] + "'</script>");
            //Response.Redirect("person_M.aspx?user_id=" + Request.QueryString["user_id"] + "");
        }


    }
}