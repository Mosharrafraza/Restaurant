using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
namespace Restaurant
{
    public partial class HotelBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   

            if (Session["Login"] == null)
            {
                Response.Write("<script>alert('Login First for booking')</script>");
                Response.Write("<script>setTimeout(function(){location.href = 'loginPage.aspx'; },0);</script>");
            }
            else
            {
                TextBox2.Text = (string)Session["Login"];
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=.;database=Hotel;integrated security=SSPI");

            try
            {

                string amnt = "";
                string room = "";
                if (isvalid())
                {
                    if (RadioButton1.Checked)
                    {
                        room = RadioButton1.Text;
                    }
                    else if (RadioButton2.Checked)
                    {
                        room = RadioButton2.Text;
                    }
                    if (CheckBox1.Checked)
                    {
                        amnt = CheckBox1.Text;
                    }
                    else if (CheckBox2.Checked)
                    {
                        amnt = CheckBox2.Text;
                    }

                    SqlCommand cmd = new SqlCommand($"insert into HotelEntry(username,room,amanties)values('{Session["Login"].ToString()}','{room}','{amnt}')", con);
                    if (con.State != System.Data.ConnectionState.Open)
                    {
                        con.Open();
                    }
                    if (cmd.ExecuteNonQuery() > 0)
                    {
                        Response.Redirect("room.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('booking Failed ')</script>");
                    }

                }
                else
                {
                    Response.Write("<script>alert('select option first ')</script>");
                }
            }catch(Exception ex)
            {
                Response.Write("<script>alert('Try again unwanted error occured!! ')</script>");
            }
            finally
            {
                if (con.State == System.Data.ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }
        private bool isvalid()
        {
            if ((RadioButton1.Checked || RadioButton2.Checked) && (CheckBox1.Checked|| CheckBox2.Checked))
            {
                return true;
            }
            return false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("room.aspx");
        }
    }
}