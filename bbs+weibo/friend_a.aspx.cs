using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class friend_a : System.Web.UI.Page
{
    public string my_user_id = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        my_user_id = Session["user_id"].ToString();
        Label5.Text =Session["name"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("search.aspx?article_title=" + TextBox1.Text.Trim() + "");
    }
}