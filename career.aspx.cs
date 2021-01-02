using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OpenOffice
{
    public partial class career : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                user.Text = Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("HomePage.aspx");
            }

        }
        protected void sign_out_btn(object sender, EventArgs e)
        {

            Session.RemoveAll();
            Response.Redirect("~/HomePage.aspx");

        }
    }
}