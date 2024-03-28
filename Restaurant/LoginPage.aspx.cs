using System;
using System.Collections.Generic;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Restaurant
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(!IsPostBack)
            {
                txtUsername.Focus();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            con=new SqlConnection("data source=.;database=HOTEL;integrated security=SSPI");
            
            SqlCommand cmd = new SqlCommand($"select count(*) from usersDetails where username= '{txtUsername.Text}' and password='{txtPassword.Text}'",con);
            con.Open();
            int row = (int)cmd.ExecuteScalar();
            if (row>0)
            {
                Session["login"] = txtUsername.Text;
                string username=txtUsername.Text;
                Response.Redirect("LoginSucces.aspx?value=" + Server.UrlEncode(username));
            }
            else
            {
                Response.Write("<script>alert('Login Failed Invalid username or password')</script>");
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUsername.Text = txtPassword.Text = "";
            txtUsername.Focus();
        }
    }
}