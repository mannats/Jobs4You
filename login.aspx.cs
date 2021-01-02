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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            { con.Close(); }
            con.Open();
        }
        protected void LinkButtonSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
      
        protected void Login_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from signup where username=@uname and password=@pwd";
            cmd.Parameters.AddWithValue("@uname", uname.Value);
            cmd.Parameters.AddWithValue("@pwd", pwd.Value);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["Username"] = uname.Value;
                Response.Redirect("homepge.aspx");
                
            }
            else
            {
                errormess.Text = "Please enter valid Username and Password!";
                //Response.Write("<script>alert('Please enter valid Username and Password')</script>");
            }
        }

      

    }
}