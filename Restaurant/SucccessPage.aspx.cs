using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant
{
    public partial class SucccessPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["reg"] == null)
            {
                Response.Write("<script>alert('Registred yourself First for Success Page')</script>");
                Response.Redirect("Registration_Page.aspx");
            }
        }
    }
} 