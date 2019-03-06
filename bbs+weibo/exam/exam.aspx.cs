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
            //连接数据库
            string sql = "select * from questions where que_type = '社区规范题'";
            SqlConnection conn = new SqlConnection("server=.;Integrated Security=true;database=ks");
            conn.Open();
            SqlDataAdapter da1 = new SqlDataAdapter(sql, conn);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);

            DataList1.DataSource = ds1;
            DataList1.DataBind();
            for(int num = 1; num <= DataList1.Items.Count; num++)
            {
                Label lblSelect = (Label)DataList1.Items[num - 1].FindControl("Label1");
                lblSelect.Text = num.ToString() + ".";
                /*this.DataList1.Items[num].FindControl("lb2").Visible = false;*/
            }
            conn.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ti1.Style["Display"] = "None";
            ti2.Style["Display"] = "Block";
            zj_tips2.Style["Display"] = "Block";
            zj_tips1.Style["Display"] = "None";
            btn2.Style["Display"] = "Block";
            btn1.Style["Display"] = "None";
            /*string str1 = (string)Session["type1"];
            string str2 = (string)Session["type2"];
            string sql = "select *from questions where que_type = '电视剧' OR que_type = '纪录片'";
            SqlConnection con = new SqlConnection("server=.;Integrated Security=true;database=ks");
            con.Open();
            SqlDataAdapter da2 = new SqlDataAdapter(sql, con);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            DataList2.DataSource = ds2;
            DataList2.DataBind();
            for (int num = 1; num <= DataList2.Items.Count; num++)
            {
                Label lblSelect = (Label)DataList2.Items[num - 1].FindControl("Label3");
                lblSelect.Text = num.ToString() + ".";

            }*/
            Tijiao();
            //con.Close();
            Response.Redirect("score.aspx");


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           // Tijiao();

        }
        protected void Tijiao()
        {
            string[] ans = new string[50];
            string sql2 = "select answer from questions where que_type='社区规范题'";
            SqlConnection coN = new SqlConnection("server=.;Integrated Security=true;database=ks");
            SqlDataAdapter da2 = new SqlDataAdapter(sql2, coN);
            DataSet ds3 = new DataSet();
            da2.Fill(ds3,"hh");
            int count = ds3.Tables["hh"].Rows.Count;
            for(int n = 0; n <count; n++)
            {
                DataRow dd = ds3.Tables["hh"].Rows[n];
                ans[n] = dd["answer"].ToString();
            }
            //Session["mark1"] = DataList1.Items.Count;

            //计算分数
           for (int i=0; i <=DataList1.Items.Count; i++)
            { 
                int c1 = 0;
                int wrongnum = 0, mark = 0;
                string rtans = ans[i];
                RadioButtonList rb1 = (RadioButtonList)(DataList1.Items[i].FindControl("RadioButtonList1"));
                Response.Write(rtans.ToString().Trim());
                Response.Write(rb1.SelectedValue.ToString().Trim());
                if (rtans.ToString().Trim() == rb1.SelectedValue.ToString().Trim())
                {
                    c1++;
                }
                wrongnum = 40 - c1;
                mark = c1*2;
                Session["wrongNum1"] = wrongnum;
                Session["mark1"] = mark;
            }
        }
    }
}