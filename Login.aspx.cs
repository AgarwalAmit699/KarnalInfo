using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
using System.Net;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["KarnalConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        PanelPassword.Visible = false;
        PanelSuccess.Visible = false;
        PanelApproved.Visible = false;
        PanelDetails.Visible = false;
        Login1.BackColor = System.Drawing.ColorTranslator.FromHtml("#D83F4A");
    }
    protected void Recover_Click(object sender, EventArgs e)
    {
        PanelPassword.Visible = true;
        PanelLogin.Visible = false;
    }
    protected void Signup1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/Signup.aspx");
    }
    protected void Login1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");

    }
    //recover password
    protected void Send_Click(object sender, EventArgs e)
    {
        
        PanelPassword.Visible = true;
        PanelLogin.Visible = false;
        try
        {
           DataSet ds = new DataSet();
           using (con)
            {
               con.Open();
               SqlCommand cmd = new SqlCommand("SELECT Name, Last_Name, Password FROM Users Where Email_Id = '" + forgetEmail.Text.Trim() + "'", con);
               SqlDataAdapter da = new SqlDataAdapter(cmd);
               da.Fill(ds);
               con.Close();
           }
         if(ds.Tables[0].Rows.Count>0)
         {
          MailMessage Msg = new MailMessage();
          // Sender e-mail address.
          Msg.From = new MailAddress(forgetEmail.Text);
         // Recipient e-mail address.
          Msg.To.Add(forgetEmail.Text);
          Msg.Subject = "Your Password Details";
          Msg.Body = "Hi" + " " + ds.Tables[0].Rows[0]["Name"] + "," + ds.Tables[0].Rows[0]["Last_Name"] + ", <br/>Please check your Login Details<br/><br/>Your Password: " + ds.Tables[0].Rows[0]["Password"] + "<br><br>Thanks! <br>For Further Queries mail us to contactus@karnal.info"
                  + "<br><br> With Regards, <br> Karnal.info <br> Copyright &copy; 2014";
          Msg.IsBodyHtml = true;
         // your remote SMTP server IP.
         SmtpClient smtp = new SmtpClient();
         smtp.Host = "mail.karnal.info";
         smtp.Port = 25;
         smtp.Credentials = new System.Net.NetworkCredential("karnalharyana.info@gmail.com", "9729293126");
         smtp.EnableSsl = false;
         smtp.Send(Msg);
        //Msg = null;

         PanelDetails.Visible = true;
         PanelPassword.Visible = false;
        // Clear the textbox valuess
         forgetEmail.Text = "";
         }
        else
        {
          
        }
       }
       catch (Exception ex)
      {
          Console.WriteLine("{0} Exception caught.", ex);
       }
}
    protected void Login2_Click(object sender, EventArgs e)
    {
       
        Session["Email"] = Email.Text;

        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Users where Email_Id =@Email and Password=@password", con);
        cmd.Parameters.AddWithValue("@Email", Email.Text);
        cmd.Parameters.AddWithValue("@password", Password.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet dt = new DataSet();
        da.Fill(dt);
        if (dt.Tables[0].Rows.Count > 0)
        {
           
            if(dt.Tables[0].Rows[0]["Is_Approved"].ToString() == "1")
            {
                Session["Log"] = "karnal";
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                PanelApproved.Visible=true;
                PanelLogin.Visible = false;
            }
            
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Email Id or Password')</script>");
        }
        con.Close();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MailMessage msg;
        SqlCommand cmd = new SqlCommand();
        string ActivationUrl = string.Empty;
        string emailId = string.Empty;
        try
        {
           msg = new MailMessage();
            SmtpClient smtp = new SmtpClient();
            emailId = ActivateEmail.Text.Trim();

            //sender email address

            msg.From = new MailAddress("karnalharyana.info@gmail.com");

            //Receiver email address

            msg.To.Add(emailId);

            msg.Subject = "Confirmation email for account activation";

            //For testing replace the local host path with your lost host path and while making online replace with your website domain name
            ActivationUrl = Server.HtmlEncode("http://localhost:51700/SuccessfullyActivated.aspx?EmailId=" + emailId);

            msg.Body = "Hi " + FetchName(emailId) +
                  " , <br> Thanks for showing interest and registering in <a href='http://www.karnal.info'> Karnal.info <a> " +
                  " . <br> Please <a href='" + ActivationUrl + "'>click here to activate</a>  your account and enjoy our services. <br><br>Thanks! <br>For Further Queries mail us to contactus@karnal.info"
                  + "<br><br> With Regards, <br> Karnal.info <br> Copyright &copy; 2014";
            msg.IsBodyHtml = true;
            smtp.Credentials = new NetworkCredential("karnalharyana.info@gmail.com", "9729293126");
            smtp.Port = 587;
            smtp.Host = "mail.smtp.info";
            smtp.EnableSsl = true;
            smtp.Send(msg);
           

            //ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Confirmation Link to activate your account has been sent to your email address');", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
            return;
        }
        finally
        {
            ActivationUrl = string.Empty;
            emailId = string.Empty;
            con.Close();
            cmd.Dispose();
        }
        PanelSuccess.Visible = true;
     
    }
private string FetchName(string emailId)
    {
        SqlCommand cmd = new SqlCommand();
        cmd = new SqlCommand("SELECT Name FROM Users WHERE Email_Id=@EmailId", con);
            cmd.Parameters.AddWithValue("@EmailId", emailId);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string Name = Convert.ToString(cmd.ExecuteScalar());
            con.Close();
            cmd.Dispose();
            return Name;
        }
}