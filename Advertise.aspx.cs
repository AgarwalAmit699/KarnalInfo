using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Net.Mail;
using System.Net;
using System.Data.SqlClient;
public partial class Advertise : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["KarnalConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Log"] != null && Session["Log"].ToString() == "karnal")
        {
            Addjob.NavigateUrl = "~/AddJob.aspx";
            AddCompany.NavigateUrl = "~/AddCompany.aspx";
            Signup1.Visible = false;
            Login1.Text = "Log Out";
            Login1.BackColor = System.Drawing.ColorTranslator.FromHtml("#DB5A5B");
            Login1.ForeColor = System.Drawing.ColorTranslator.FromHtml("#FFFFFF");
        }
        else
        {
            Addjob.NavigateUrl = "~/Login.aspx";
            AddCompany.NavigateUrl = "~/Login.aspx";
        }
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid)
        {
            LabelCaptcha.Text = "*Invalid Captcha";
        }
        else
        {
            LabelCaptcha.Visible = false;
            MailMessage msg;
            string emailId = string.Empty;
            try
            {
                //Sending activation link in the email

                msg = new MailMessage();
                SmtpClient smtp = new SmtpClient();
                emailId = "karnalharyana.info@gmail.com";

                //sender email address

                msg.From = new MailAddress("advertise@karnal.info");

                //Receiver email address

                msg.To.Add(emailId);

                msg.Subject = "Karnal.info | Advertise Details";

                msg.Body = "Advertise Details:- <br><br> Name:  " + Name.Text.Trim() + "<br> Contact no: " + Contact.Text.Trim() +
                      "<br> Company: " + Company.Text.Trim() + " <br> Email Id: " + Email.Text.Trim() + "<br> Address : " + Address1.Text.Trim() +
                      "<br> Message :  " + Message1.Text.Trim();
                msg.IsBodyHtml = true;
                smtp.Credentials = new NetworkCredential("advertise@karnal.info", "Etl@9896928300");
                smtp.Port = 25;
                smtp.Host = "mail.karnal.info";
                smtp.EnableSsl = false;
                smtp.Send(msg);
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your Message has been Submitted. We will contact you soon.')</script>");
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
                return;
            }
            finally
            {
                Name.Text = string.Empty;
                Contact.Text = string.Empty;
                Company.Text = string.Empty;
                Email.Text = string.Empty;
                Address1.Text = "";
                Message1.Text = "";
            }
        }
    }
    protected void Login1_Click(object sender, EventArgs e)
    {
        if (Session["Log"] != null && Session["Log"].ToString() == "karnal")
        {
            Session.Clear();
            Signup1.Visible = true;
            Login1.Text = "Log In";
            Login1.BackColor = System.Drawing.ColorTranslator.FromHtml("#E4E4E4");
            Login1.ForeColor = System.Drawing.ColorTranslator.FromHtml("#000000");
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
    }
    protected void Signup1_Click(object sender, EventArgs e)
    {
        
            Response.Redirect("~/Signup.aspx");
        
    }
}
