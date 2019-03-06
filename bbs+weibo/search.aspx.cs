using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class search : System.Web.UI.Page
{
    
    public string str = null;
    public string my_user_id = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        str = Request.QueryString["article_title"];
        my_user_id = Session["user_id"].ToString();
        Label5.Text = Session["name"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("search.aspx?article_title=" + TextBox1.Text.Trim() + "");
    }
}