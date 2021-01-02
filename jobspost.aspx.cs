using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace OpenOffice
{
    public partial class jobspost : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            { con.Close(); }
            con.Open();
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
        protected void save_job(object sender, EventArgs e)
        {

            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "insert into jobposts values('" + company1.Value + "','" + titlejob.Value + "','" + categoryjob.Value + "','" + skills1.Value + "','" + eligibility1.Value + "','" +experiencejob1.Value + "','" + description1.Value + "','" + location1.Value + "','" + salary1.Value + "','" + email1.Value + "','"+ phone1.Value +"')";

            cmd1.ExecuteNonQuery();

            company1.Value = "";
            titlejob.Value = "";
            categoryjob.Value = "";
            skills1.Value = "";
            experiencejob1.Value = "";
            description1.Value = "";
            location1.Value = "";
            salary1.Value = "";
            email1.Value = "";
            phone1.Value = "";

            Response.Write("<script>alert('Job Posted Successfully')</script>");
            Response.Redirect("viewjobs.aspx");
            

        }
     
    }
}