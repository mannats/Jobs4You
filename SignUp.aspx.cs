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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            { con.Close(); }
            con.Open();
            /*Response.Write("Connection Made");
            displaydata();*/
        }
        protected void signup_click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into signup values('" + username.Value + "', '" + email.Value + "','" + password.Value + "')";
            cmd.ExecuteNonQuery();

            username.Value = "";
            email.Value = "";
            password.Value = "";
            displaydata();

        }
        /* To display Content*/
        public void displaydata()
        {
            
                Response.Redirect("Login.aspx");
            
        }
        //protected void LinkButtonSignUp_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("SignUp.aspx");
        //}
        protected void LinkButtonLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        //protected void postjob(object sender, EventArgs e)
        //{

        //    Response.Redirect("jobpost.aspx");
        //}

    }
}