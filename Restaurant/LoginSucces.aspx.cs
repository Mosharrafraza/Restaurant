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
    public partial class LoginSucces : System.Web.UI.Page
    {
        string val = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            
            else
            {
                if (Request.QueryString["value"]!=null)
                {
                    val = Server.UrlDecode(Request.QueryString["value"]);
                    loaddata(val);
                }
            }
        }
        private void loaddata(string a)
        {
            SqlConnection con = new SqlConnection("data source=.;database=HOTEL;integrated security=SSPI");
            SqlDataAdapter da = new SqlDataAdapter($"select first_name,last_name,username,gender,email,phone,address,age,language,country from usersDetails where username='{a}'", con);
            DataSet ds = new DataSet();
           da.Fill(ds, "usersDetails");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["Login"] = null;
            Response.Redirect("LoginPage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HotelBook.aspx");
        }
    }
}