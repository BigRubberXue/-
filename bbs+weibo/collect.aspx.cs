using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class collect : System.Web.UI.Page
{
    public string my_user_id=null;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Text = Session["name"].ToString();
        my_user_id = Session["user_id"].ToString();
    }
}