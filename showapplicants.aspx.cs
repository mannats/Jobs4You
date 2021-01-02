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
    public partial class WebForm10 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            { con.Close(); }
            con.Open();
            if (!this.IsPostBack)
            {
                this.applicants();
            }
        }

        protected void SearchApplicants(object sender, EventArgs e)
        {
            this.applicants();
        }
       
        private void applicants()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            string sql = "SELECT * FROM freelanceProfile";
            if (!string.IsNullOrEmpty(txtSearch.Text.Trim()))
            {
                sql += " WHERE services LIKE @services + '%'";
                cmd.Parameters.AddWithValue("@services", txtSearch.Text.Trim());
            }
            cmd.CommandText = sql;
            cmd.Connection = con;
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {
                //DataTable dt = new DataTable();
                //sda.Fill(dt);
                //gvCustomers.DataSource = dt;
                //gvCustomers.DataBind();

                DataTable dt = new DataTable();
                SqlDataAdapter d = new SqlDataAdapter(cmd);
                d.Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }
    }
}
    