using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sendart : System.Web.UI.Page
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
        string type_judge = "select * from person_user where user_id ='"+Session["user_id"].ToString()+"'";
        SqlDataReader dr = Sqlconnnect(type_judge);
        dr.Read();
        DropDownList1.Items[0].Text = dr["type1"].ToString(); ;
        DropDownList1.Items[1].Text = dr["type2"].ToString(); ;
       
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        string s = "insert into article(user_id,reward,article,article_title,type) values('"+Session["user_id"].ToString()+"','0','"+article.Value+"','"+article_title.Text+"','"+DropDownList1.Text+"')";
        cmd = Sql_cmd(s);
        cmd.ExecuteNonQuery();
        article.Value = "";
        article_title.Text = "";
        Con.Close();
        Con.Dispose();
        Response.Write("<script>alert('上传完成')</script>");

    }
}