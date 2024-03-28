using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Restaurant
{
    public partial class room : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
            {
                SqlConnection con = new SqlConnection("data source=.;database=Hotel;integrated security=SSPI");
                string cmd = $"select * from Hotelentry where username='{Session["Login"]}'";
                SqlCommand s = new SqlCommand(cmd, con);
                con.Open();
                SqlDataReader r = s.ExecuteReader();
                if (r.Read())
                {
                    GridView1.DataSource = r;
                    GridView1.DataBind();
                }
            }
            else
            {
                Response.Write("<script>alert('Login First for View Data')</script>");
                Response.Write("<script>setTimeout(function(){location.href = 'loginPage.aspx'; },0);</script>");
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}