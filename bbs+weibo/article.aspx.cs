using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class article : System.Web.UI.Page
{
    
    SqlConnection Con = null;
    SqlCommand cmd = null;
    public string article_user_id = null;//文章主人id
    public int article_id = 0;//当前文章
    public int my_user_id = 0;//我的用户id
    bool bool_attention = false;
    bool bool_collect = false;
    bool bool_thumbsup = false;
    bool bool_gift = false;
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
    public SqlCommand Sql_cmd(string s) {
        string conn = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        Con = new SqlConnection(conn);
        //打开数据库连接
        Con.Open();
        cmd = new SqlCommand(s, Con);//SqlCommand对象允许你指定在数据库上执行的操作的类型。
        return cmd;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string str1 = Session["user_id"].ToString();
        my_user_id  =int.Parse(str1);
        article_id = int.Parse(Request.QueryString["article_id"]);
        Label5.Text = Session["name"].ToString();
        string s = "select article_title,article,name,article.user_id from article join [user] on article.user_id=[user].user_id  where article_id='" + article_id+"'";  
        SqlDataReader dr = Sqlconnnect(s);
        dr.Read();
        Label1.Text = dr["article_title"].ToString();
        Label2.Text =dr["article"].ToString();
        Label3.Text = dr["name"].ToString();
        article_user_id = dr["user_id"].ToString();
        Con.Close();
        Con.Dispose();
        dr.Close();
        //更新本文章的article_user 和   article_id 
        //判断是否关注
        string s_judge = "select count(*) as catch from attention where p_user_id='" + article_user_id + "' and a_user_id='" + my_user_id + "' ";
        dr = Sqlconnnect(s_judge);
        dr.Read();
        int judge=int.Parse(dr["catch"].ToString());
        if (judge != 0){
            bool_attention = true;
            attention.Text = "已关注";
        }
        Con.Close();
        Con.Dispose();
        dr.Close();
        //判断是否点赞
        s_judge = "select count(*) as catch from thumbsup where user_id='" + my_user_id + "' and article_id='" + article_id + "' ";
        dr = Sqlconnnect(s_judge);
        dr.Read();
        judge = int.Parse(dr["catch"].ToString());
        if (judge != 0)
        {
            bool_thumbsup = true;
            thumbsup.Text = "已点赞";
        }
        Con.Close();
        Con.Dispose();
        dr.Close();
        //判断是否收藏
        s_judge = "select count(*) as catch from collect where user_id='" + my_user_id + "' and article_id='" + article_id + "' ";
        dr = Sqlconnnect(s_judge);
        dr.Read();
        judge = int.Parse(dr["catch"].ToString());
        if (judge != 0)
        {
            bool_collect = true;
            collect.Text = "已收藏";
        }
        Con.Close();
        Con.Dispose();
        if (my_user_id == int.Parse(article_user_id)) {
            bool_collect = true;
            bool_attention = true;
            bool_thumbsup = true;
            bool_gift = true;
        }
    }


    protected void attention_Click(object sender, EventArgs e)
    {
        if (!bool_attention)
        {
            /*
            string s = "select count(*) as num from attention where p_user_id='" + article_user_id + "';";
            SqlDataReader dr = Sqlconnnect(s);
            dr.Read();
            int atte_num = int.Parse(dr["num"].ToString());
            Con.Close();
            atte_num += 1;
            */
            string s_add = "insert into attention(p_user_id,a_user_id) values('" + article_user_id + "','" + my_user_id + "');";
            cmd = Sql_cmd(s_add);
            cmd.ExecuteNonQuery();
            attention.Text = "已关注";
            /*
             Response.Write("<script>alert('关注成功')</script>");
             */
            //Response.Redirect("article.aspx?article_id=" + article_id);
        }
        

    }

    protected void thumbsup_Click(object sender, EventArgs e)
    {
        if (!bool_thumbsup) { 
            /*
            string s = "select count(*) as num from thumbsup where article_id='" + article_id + "';";
            SqlDataReader dr = Sqlconnnect(s);
            dr.Read();
            string atte_num = dr["num"].ToString();
            Con.Close();*/
            /*
             显示点赞数及相应变动         
            */
            //更改点赞记录
            string s_add = "insert into thumbsup(user_id,article_id) values ('"+my_user_id+"','"+ article_id + "')";
            cmd = Sql_cmd(s_add);
            cmd.ExecuteNonQuery();
            thumbsup.Text = "已点赞";
        }

    }

    protected void collect_Click(object sender, EventArgs e)
    {
        if (!bool_collect) {
            //更改收藏记录
            string s_add = "insert into collect(user_id,article_id) values ('" + my_user_id + "','" + article_id + "')";
            
            cmd = Sql_cmd(s_add);
            cmd.ExecuteNonQuery();

            collect.Text = "已收藏";
        }
    }

    protected void reward_Click(object sender, EventArgs e)
    {
        if (!bool_gift) { 
            //更改投币记录
            string jdg = "select [user].gift from [user] where user_id ='" + my_user_id + "'";
            SqlDataReader dr = Sqlconnnect(jdg);
            dr.Read();
            if (int.Parse(dr["gift"].ToString()) > 0)
            {
                string s_add = "update article set reward =reward+1 where article_id='" + article_id + "'";
                cmd = Sql_cmd(s_add);
                cmd.ExecuteNonQuery();
                s_add = "update [user] set gift = gift+1 where [user].user_id='" + article_user_id + "'";
                cmd = Sql_cmd(s_add);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('打赏成功')</script>");
                string s_sub = "update [user] set gift = gift - 1 where [user].user_id='" +my_user_id + "'";
                cmd=Sql_cmd(s_sub);
                cmd.ExecuteNonQuery();
                cmd.Cancel();
                dr.Close();
            }
            else {
                Response.Write("<script>alert('没币了')</script>");
            }
        }

    }

    protected void tijiaobt_Click(object sender, EventArgs e)
    {
        string s = "insert into message(user_id,article_id,message) values('"+my_user_id+"','"+article_id+"','"+message.Value+"')";
        cmd = Sql_cmd(s);
        cmd.ExecuteNonQuery();
        message.Value = "";
    }
}
