using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class master_main : System.Web.UI.Page
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
        string s = "select * from article";
        SqlDataReader dr = Sqlconnnect(s);
        GridView1.DataSource = dr;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id_select = GridView1.DataKeys[e.RowIndex].Value.ToString();
        string s = "delete from article where article_id='" + id_select + "'";
        cmd = Sql_cmd(s);
        cmd.ExecuteNonQuery();
        s = "select * from article";
        SqlDataReader dr = Sqlconnnect(s);
        GridView1.DataSource = dr;
        
        GridView1.DataBind();
        Con.Close();
        Con.Dispose();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("master_user.aspx");
    }
}