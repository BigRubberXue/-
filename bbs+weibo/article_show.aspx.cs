using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class article_show : System.Web.UI.Page
{
    SqlConnection Con = null;
    SqlCommand cmd = null;
    string s_add = null;
    int user_id;
    public string s_add_title = null;
    public string long_str = null;
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
        SqlDataReader dr = null;
        string s_add_finally = null;
        if (Request.QueryString["user_id"] != null)
        {
            user_id = int.Parse(Request.QueryString["user_id"]);
            s_add = "where user_id = '" + user_id + "' ";
        }
        else if (Request.QueryString["add_str"] != null)
        {
            s_add_title = " where article_title LIKE '%" + Request.QueryString["add_str"] + "%'";
        }
        else if (Request.QueryString["long_str"] != null)
        {
            long_str = " where user_id IN (select p_user_id from attention where attention.a_user_id ='" + Session["user_id"].ToString() + "')";
        }
        else {
            string user_type = "select type1,type2 from person_user where user_id= '" + Session["user_id"].ToString() + "'";
            dr = Sqlconnnect(user_type);
            dr.Read();
            string type1 = dr["type1"].ToString();
            string type2 = dr["type2"].ToString();
            s_add_finally = "where type in ('" + type1 + "','" + type2 + "') ";
        }
        string s = "select * from article "+s_add+s_add_title+long_str+s_add_finally + " order by article_id DESC";
       
        //select * from article where article_title LIKE '%" + Request.QueryString["add_str"] + "%'" order by article_id DESC
        //"select * from article order by article_id DESC";
        //"select * from articlewhere user_id IN (select p_user_id from attention where attention.a_user_id ='"+Session["user_id"].ToString()+"') order by article_id DESC";
        //select * from article order where type="^^^" by article_id DESC";
        //select * from article order by article_id DESC
        dr = Sqlconnnect(s);
        Response.Write("<div class=\"row\"><div class =\"col-lg-2\"></div><div class=\"col-lg-8 \">");
        while (dr.Read())
        {
            Response.Write("<div style=\"width:100%; \" class=\"panel panel-info\"><div class=\"panel-heading\">");
            Response.Write("<h3 class=\"panel-title\">");
            //Response.Write("<asp:Label runat=\"server\" Onclick=\"Article_title_click("+dr["article_id"].ToString()+ ")\">"+dr["article_title"].ToString() + "</asp:Label>");
            Response.Write("<a  target=\"_parent\" href=\"article.aspx?article_id=" + dr["article_id"].ToString()+" \">" + dr["article_title"].ToString()+ "</asp:Label>");
            Response.Write("</h3></div><div class=\"panel-body\">");
            Response.Write("<asp:Label runat=\"server\" >" + dr["article"].ToString() + "</asp:Label>");
            Response.Write("</div></div>");
        }
        Response.Write("</div></div>");
        Con.Close();
        Con.Dispose();
        /*
         <div style="margin-top=" class="panel panel-info ">
            <div class="panel-heading">
                 <h3 class="panel-title">面板标题</h3>
            </div>
            <div class="panel-body">
                这是一个基本的面板
         </div>
        </div>
       }*/
    }
    public void Article_title_click(int article_id,object sender, EventArgs e) {
        
        Response.Write("article.aspx?article="+article_id);

    }
    

    
}
 
 