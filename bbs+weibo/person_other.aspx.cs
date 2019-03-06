using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class person_other : System.Web.UI.Page
{
    public string article_user_id = null;//当前文章的作者id
    string user_id = null;//我的用户id
    SqlConnection Con = null;
    SqlCommand cmd = null;
    bool bool_attention = false;
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
        article_user_id = Request.QueryString["user_id"];
        user_id = Session["user_id"].ToString();
        string s = "select * from person_user where user_id = '" + article_user_id + "'";
        string s_n = "select * from [user] where user_id = '" + article_user_id + "'";
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
        
        string judge = "select count(*) as num from attention where p_user_id = '"+article_user_id+"' and a_user_id = '"+user_id +"'";
        dr = Sqlconnnect(judge);
        dr.Read();
        if (int.Parse(dr["num"].ToString())==1) {
            bool_attention = true;
            Button1.Text = "已关注";
        }
        Con.Close();
        Con.Dispose();
       
    }

    protected void attention_Click(object sender, EventArgs e)
    {
        if (!bool_attention)
        {
            if (article_user_id != user_id) { 
                string s = "insert into attention(p_user_id,a_user_id) values('"+article_user_id+"','"+user_id+"')";
                cmd = Sql_cmd(s);
                cmd.ExecuteNonQuery();
                Button1.Text = "已关注";   
            }
        }
    }

    

}