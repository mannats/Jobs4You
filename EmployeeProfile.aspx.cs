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
    public partial class WebForm4 : System.Web.UI.Page

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
    


        protected void save_info_freelance2(object sender, EventArgs e)
        {
          
                SqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "insert into freelanceProfile values('" + fname.Value + "','" + last_name.Value + "','" + mobile.Value + "','" + email1.Value + "','" + location1.Value + "','" + services.Value + "','" + english.Value + "','" + experience1.Value + "','" + description.Value + "','" + Schoolname.Value + "','" + Major.Value + "','" + Degree.Value + "','" + educationDate.Value + "','" + Company.Value + "','" + title.Value + "','" + Location.Value + "','" + Experience.Value + "')";

                cmd1.ExecuteNonQuery();
                fname.Value = "";
                last_name.Value = "";
                mobile.Value = "";
                email1.Value = "";
                location1.Value = "";
                services.Value = "";
                english.Value = "";
                experience1.Value = "";
                description.Value = "";
                Schoolname.Value = "";
                Major.Value = "";
                Degree.Value = "";
                educationDate.Value = "";
                Company.Value = "";
                title.Value = "";
                Location.Value = "";
                Experience.Value = "";
            Response.Redirect("viewjobs.aspx");
        }
   

       

        //void getUserPersonalDetails()
        //{
        //    try
        //    {

        //        if (con.State == ConnectionState.Closed)
        //        {
        //            con.Open();
        //        }

        //        SqlCommand cmd = new SqlCommand("SELECT * from freelanceProfile where member_id='" + Session["username"].ToString() + "';", con);
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        DataTable dt = new DataTable();
        //        da.Fill(dt);

        //        fname.Value = dt.Rows[0]["fname"].ToString();
        //        //last_name.Value = dt.Rows[0]["last_name"].ToString();
        //        //TextBox3.Text = dt.Rows[0]["contact_no"].ToString();
        //        //TextBox4.Text = dt.Rows[0]["email"].ToString();
        //        //DropDownList1.SelectedValue = dt.Rows[0]["state"].ToString().Trim();
        //        //TextBox6.Text = dt.Rows[0]["city"].ToString();
        //        //TextBox7.Text = dt.Rows[0]["pincode"].ToString();
        //        //TextBox5.Text = dt.Rows[0]["full_address"].ToString();
        //        //TextBox8.Text = dt.Rows[0]["member_id"].ToString();
        //        //TextBox9.Text = dt.Rows[0]["password"].ToString();

        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");

        //    }
        //}


        //void updateUserPersonalDetails()
        //{
        //    //string password = "";
        //    //if (TextBox10.Text.Trim() == "")
        //    //{
        //    //    password = TextBox9.Text.Trim();
        //    //}
        //    //else
        //    //{
        //    //    password = TextBox10.Text.Trim();
        //    //}
        //    //try
        //    //{
        //    //    SqlConnection con = new SqlConnection(strcon);
        //    //    if (con.State == ConnectionState.Closed)
        //    //    {
        //    //        con.Open();
        //    //    }


        //        SqlCommand cmd = new SqlCommand("update freelanceProfile set fname=@fname WHERE empid='" + Session["username"].ToString().Trim() + "'", con);

        //        cmd.Parameters.AddWithValue("@fname", fname.Value.Trim());


        //        int result = cmd.ExecuteNonQuery();
        //        con.Close();
        //        if (result > 0)
        //        {

        //            Response.Write("<script>alert('Your Details Updated Successfully');</script>");
        //            getUserPersonalDetails();

        //        }
        //        else
        //        {
        //            Response.Write("<script>alert('Invaid entry');</script>");
        //        }

        //    //   catch (Exception ex)
        //    //{
        //    //    Response.Write("<script>alert('" + ex.Message + "');</script>");
        //    //}
        //}
        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    if (Session["username"].ToString() == "" || Session["username"] == null)
        //    {
        //        Response.Write("<script>alert('Session Expired Login Again');</script>");
        //        Response.Redirect("userlogin.aspx");
        //    }
        //    else
        //    {
        //        updateUserPersonalDetails();

        //    }
        //}


    }
}