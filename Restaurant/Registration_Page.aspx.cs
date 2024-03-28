using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace Restaurant
{
    public partial class Registration_Page : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Focus();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            Int64 phone = Convert.ToInt64(TextBox6.Text);

            int age = Convert.ToInt32(TextBox9.Text);
            string gender = "";
            string l = "";
            bool g = false; bool ln = false;
            if (rbFemale.Checked)
            {
                g = true;
                gender = "Female";
            }
            else if (rbMale.Checked)
            {
                gender = "Male";
                g = true;
            }
            else
            {
                g = false;
                Response.Write("<script>alert('Select Gender to Proceed')</script>");
            }
            if (rbenglish.Checked)
            {
                l = "ENGLISH"; ln = true;
            }
            else if (rbHindi.Checked)
            {
                l = "HINDI"; ln = true;
            }
            else if (rbtelugu.Checked)
            {
                l = "TELUGU"; ln = true;
            }
            else
            {
                ln = false;
                Response.Write("<script>alert('Select Language to Proceed')</script>");
            }
            string country = ""; bool cn = false;
            if (DropDownList1.SelectedIndex > 0)
            {
                country = DropDownList1.SelectedItem.ToString(); cn = true;
            }
            else
            {
                cn = false;
                Response.Write("<script>alert('Select Country to Proceed')</script>");
            }
            string cmd = $"INSERT INTO usersDetails(first_Name, last_Name, username, gender, password, email, phone, address, age, language, country)Values('{TextBox1.Text}', '{TextBox2.Text}','{TextBox3.Text}', '{gender}', '{TextBox4.Text}','{TextBox8.Text}', {phone},'{TextBox7.Text}', {age}, '{l}', '{country}')";
            con = new SqlConnection("data source=.;database=Hotel;integrated security=SSPI");
            SqlCommand c = new SqlCommand(cmd, con);
            try
            {
                if (cn && ln && g)
                {
                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();
                    }
                    if (c.ExecuteNonQuery() > 0)
                    {
                        Session["reg"] = 1;
                        Response.Redirect("SucccessPage.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Registration Failed')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Check All Field For registration')</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Try Another Username this username already availed by someone else ')</script>");
            }
            finally { if (con != null) { con.Close(); } }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = TextBox7.Text = TextBox8.Text = TextBox9.Text = "";
            rbenglish.Checked = rbHindi.Checked = rbtelugu.Checked = rbMale.Checked = rbFemale.Checked = false;
            DropDownList1.SelectedIndex = 0;
            TextBox1.Focus();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}