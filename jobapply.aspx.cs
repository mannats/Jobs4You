using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;



namespace OpenOffice
{
    public partial class WebForm6 : System.Web.UI.Page
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
        protected void sendmail(object sender, EventArgs e)
        {
            try
            {
                MailMessage Msg = new MailMessage();
                // Sender e-mail address.
                Msg.From = new MailAddress(frommess.Text);
                Msg.To.Add(new MailAddress(tomess.Text));
                Msg.Subject = txtSubject.Text;
                Msg.Body = txtBody.Text;
               

                string filePath, fileName;
                if (fileUploader.PostedFile != null)
                {
                    filePath = fileUploader.PostedFile.FileName; // file name with path.
                    fileName = fileUploader.FileName;// Only file name.
                    Msg.Attachments.Add(new Attachment(fileUploader.PostedFile.InputStream, fileName));
                }


                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                Msg = null;
                string message = "alert('Mail Sent Successfully <br/> Thank You')";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                Response.Redirect("viewjobs.aspx");
            }
            catch (Exception ex)
            {
                Console.WriteLine("{0} Exception caught.", ex);
            }
        }
    }
}