using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication2
{


    public partial class exam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ti1.Style["Display"] = "Block";
            ti2.Style["Display"] = "None";
            zj_tips1.Style["Display"] = "Block";
            zj_tips2.Style["Display"] = "None";
            btn1.Style["Display"] = "Block";
            btn2.Style["Display"] = "None";
            Session["zxt1"] = Session["type1"];
            Session["zxt2"] = Session["type2"];
            for(int i = 0; i < DataList4.Items.Count; i++)
            {
                this.DataList4.Items[i].FindControl("lb1").Visible = false;
            }
            for (int i = 0; i < DataList1.Items.Count; i++)
            {
                this.DataList1.Items[i].FindControl("lb2").Visible = false;
            }

            //HttpCookie cookie = Request.Cookies["Tm"];
            //if (cookie != null)
            //{
            //   Tm.Text = cookie.Values["Tm"];
            // }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
          
        }
      

        protected void Button2_Click(object sender, EventArgs e)
        {
            Tijiao1();
           Tijiao2();
            Response.Redirect("score.aspx");

        }

        protected void Tijiao1()
        {
            int c1 = 0;
            int num = 0;
            int mark = 0;
            //单选题
            for (int i = 0; i < DataList4.Items.Count; i++)
            {

                string lbans = ((Label)DataList4.Items[i].FindControl("lb1")).Text;
                string rtans = lbans.Substring(lbans.Length - 1);
                string selectstr = "";
                if (((RadioButton)(DataList4.Items[i].FindControl("rb1"))).Checked)
                {
                    selectstr = "A";
                }
                else if (((RadioButton)(DataList4.Items[i].FindControl("rb2"))).Checked)
                {
                    selectstr = "B";
                }
                else if (((RadioButton)(DataList4.Items[i].FindControl("rb3"))).Checked)
                {
                    selectstr = "C";
                }
                else if (((RadioButton)(DataList4.Items[i].FindControl("rb4"))).Checked)
                {
                    selectstr = "D";
                }
                if (rtans == selectstr)
                {
                    c1 += 1;
                }
                num = 20 - c1;
                mark = c1 * 2;
                Session["wnum1"] = num;
                Session["mark1"] = mark;
            }
        }
        protected void Tijiao2()
        {
            int c2 = 0;
            int num2 = 0;
            int mark2 = 0;
            //单选题
            for (int i = 0; i < DataList1.Items.Count; i++)
            {

                string lbans = ((Label)DataList1.Items[i].FindControl("lb2")).Text;
                string rtans = lbans.Substring(lbans.Length - 1);
                string selectstr = "";
                if (((RadioButton)(DataList1.Items[i].FindControl("rb5"))).Checked)
                {
                    selectstr = "A";
                }
                else if (((RadioButton)(DataList1.Items[i].FindControl("rb6"))).Checked)
                {
                    selectstr = "B";
                }
                else if (((RadioButton)(DataList1.Items[i].FindControl("rb7"))).Checked)
                {
                    selectstr = "C";
                }
                else if (((RadioButton)(DataList1.Items[i].FindControl("rb8"))).Checked)
                {
                    selectstr = "D";
                }
                if (rtans == selectstr)
                {
                    c2 += 1;
                }
                num2 = 10 - c2;
                mark2 = c2 * 2;
                Session["wnum2"] = num2;
                Session["mark2"] = mark2;
            }
        }
    }
}