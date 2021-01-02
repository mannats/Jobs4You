using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace OpenOffice
{
    public partial class WebForm5 : System.Web.UI.Page
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



            if (!this.IsPostBack)
            {
                this.SearchCustomers();
            }
        }

        protected void sign_out_btn(object sender, EventArgs e)
        {

            Session.RemoveAll();
            Response.Redirect("~/HomePage.aspx");

        }
        protected void Search(object sender, EventArgs e)
        {
            this.SearchCustomers();
        }
       

        private void SearchCustomers()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            string sql = "SELECT company1, titlejob1, categoryjob1, skills1, eligibility1, experiencejob1, description1, location1, salary1, email1, phone1 FROM jobposts";
                    if (!string.IsNullOrEmpty(txtSearch.Text.Trim()))
                    {
                        sql += " WHERE categoryjob1 LIKE @categoryjob1 + '%'";
                        cmd.Parameters.AddWithValue("@categoryjob1", txtSearch.Text.Trim());
                    }
            cmd.CommandText = sql;
            cmd.Connection = con;
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {
                DataTable dt = new DataTable();
                SqlDataAdapter d = new SqlDataAdapter(cmd);
                d.Fill(dt);
                DataList.DataSource = dt;
                DataList.DataBind();

            }
        }
    }
}