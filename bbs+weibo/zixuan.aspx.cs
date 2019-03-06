using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ArrayList al = new ArrayList();
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
           // Session.Abandon();//清除全部Session

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = al.Count;
            //if (a > 2)
            //{
            //    
            //}
            //else if (a == 1) {
            //    Response.Write("<script language='javascript'>alert('不能只选一项哦');</script>");
            //}else
            if (a == 2)
            {
                Session["type1"] = al[0];
                Session["type2"] = al[1];
                string s = "update person_user set type1='"+al[0]+"' , type2 = '"+al[1]+"' where user_id = '"+Session["user_id"].ToString()+"'";
                cmd = Sql_cmd(s);
                cmd.ExecuteNonQuery();
                Response.Redirect("exam.aspx");
            }
            else {
                Response.Write("<script language='javascript'>alert('一次选择两个科目哦');window.location.href=document.URL;</script>");
            }
            //Session["aa"] = al.Count;
            //Response.Redirect("a.aspx");
            Con.Close();
            Con.Dispose();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if(CheckBox1.Checked)
            {
                al.Add("动作射击");
            }
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox2.Checked)
            {
                al.Add("冒险格斗");
            }
        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox3.Checked)
            {
                al.Add("模拟策略");
            }
        }

        protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox4.Checked)
            {
                al.Add("音乐体育");
            }
        }

        protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox7.Checked)
            {
                al.Add("纪录片");
            }
        }

        protected void CheckBox8_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox8.Checked)
            {
                al.Add("电影");
            }
        }

        protected void CheckBox9_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox9.Checked)
            {
                al.Add("电视剧");
            }
        }

        protected void CheckBox11_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox11.Checked)
            {
                al.Add("数学");
            }
        }

        protected void CheckBox12_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox12.Checked)
            {
                al.Add("军事");
            }
        }

        protected void CheckBox13_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox13.Checked)
            {
                al.Add("数码科技");
            }
        }

        protected void CheckBox15_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox15.Checked)
            {
                al.Add("国创");
                        }
        }

        protected void CheckBox16_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox16.Checked)
            {
                al.Add("番剧");
            }
        }
    }
}