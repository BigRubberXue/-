using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registered : System.Web.UI.Page
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
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    
    protected void submit_Click(object sender, EventArgs e)
    {
        
        string test_str = "select username from [user] where username='" + uname.Text.Trim() + "'";
        string str = "insert into [user](username,password,name,attention) values('"+uname.Text.Trim()+"','"+pwd2.Text.Trim()+ "','" + uname.Text.Trim() + "','0')";    //SQL语句将前台中TextBox中的存到数据库的字段中          
        string str1 = "select user_id from [user] where username = '" + uname.Text.Trim() + "'";   
        SqlDataReader dr = Sqlconnnect(test_str);

        if (dr.Read())
        {
            Response.Write("<script>alert('用户名已注册')</script>");
        }       
        else
        {
            dr.Close();
            cmd = Sql_cmd(str);//SqlCommand对象允许你指定在数据库上执行的操作的类型。
            cmd.ExecuteNonQuery(); //在数据库中执行语句
            dr = Sqlconnnect(str1);
            dr.Read();
            int user_id = int.Parse(dr["user_id"].ToString());
            Con.Close();
            Session["username"] = uname.Text.Trim(); //将用户名保存到SESSION中
            Session["user_id"] = user_id;
            this.div1.Style.Value = "display:normal";
            //Response.Redirect("person_M_modify.aspx");//成功后页面跳转
            Response.Write("<script>alert('注册成功，前往完善个人信息');location.href='person_new.aspx';</script>");

        }
        Con.Close();
        Con.Dispose();

    }
}


