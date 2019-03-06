using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class score : System.Web.UI.Page
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
            int total = Convert.ToInt32(Session["mark1"]) + Convert.ToInt32(Session["mark2"]);
            int dui= 30- Convert.ToInt32(Session["wnum1"]) -Convert.ToInt32(Session["wnum2"]);
            int cuo = 30 - dui;
            if (total>36)
             {
                div7.Visible = false;
                div8.Visible = false;
                string s = "update [user] set [user].gift = '"+total+"' where user_id = '"+Session["user_id"].ToString()+"'";
                cmd = Sql_cmd(s);
                cmd.ExecuteNonQuery();
            }
             else
             {            
                 div2.Visible = false;
                 div4.Visible = false;
             }
            Label3.Text = "您答对了" + dui.ToString()+ "道题，您的得分是" + total;
            Label5.Text = "您答错了" + cuo.ToString() + "道题，您的得分是" + total;
            

        }

    }
}