using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net.Mail;
using System.Net;


public partial class Signup: System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["KarnalConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
       
        PanelSignup.Visible = true;
        PanelSuccess.Visible = false;
        Signup1.BackColor = System.Drawing.ColorTranslator.FromHtml("#D83F4A");

    }
    
    protected void Signup1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Signup.aspx");
    }

    protected void Login1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
    protected void Account_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid)
        {
            LabelCaptcha.Text = "*Invalid Captcha";
        }
        else
        {
            LabelCaptcha.Visible = false;
            using (var cmd1 = new SqlCommand("select Email_Id from Users where Email_Id=@Email", con))
            {
                con.Open();
                cmd1.Parameters.AddWithValue("@Email", Email.Text);
                using (var dr = cmd1.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        EmailLabel.Visible = true;
                        EmailLabel.Text = "*Email Id Already Exists..!!";
                        con.Close();
                    }
                    else
                    {
                        con.Close();
                        MailMessage msg;
                        SqlCommand cmd = new SqlCommand();
                        string ActivationUrl = string.Empty;
                        string emailId = string.Empty;
                        try
                        {
                            cmd = new SqlCommand("insert into Users (Name,Last_Name,Email_Id,Password,Address,Contact_No,Occupation) values (@Name,@Last,@EmailId,@password,@Address,@ContactNo,@occupation) ", con);
                            cmd.Parameters.AddWithValue("@Name", FirstName.Text.Trim());
                            cmd.Parameters.AddWithValue("@Last", LastName.Text.Trim());
                            cmd.Parameters.AddWithValue("@EmailId", Email.Text.Trim());
                            cmd.Parameters.AddWithValue("@password", Password.Text.Trim());
                            cmd.Parameters.AddWithValue("@Address", Address.Text.Trim());
                            cmd.Parameters.AddWithValue("@ContactNo", Contact.Text.Trim());
                            cmd.Parameters.AddWithValue("@occupation", Occupation.Text.Trim());
                            if (con.State == ConnectionState.Closed)
                            {
                                con.Open();
                            }
                            cmd.ExecuteNonQuery();
                            //Sending activation link in the email

                            msg = new MailMessage();
                            SmtpClient smtp = new SmtpClient();
                            emailId = Email.Text.Trim();

                            //sender email address

                            msg.From = new MailAddress("karnalharyana.info@gmail.com");

                            //Receiver email address

                            msg.To.Add(emailId);

                            msg.Subject = "Karnal.info | Confirmation email for account activation";


                            //For testing replace the local host path with your lost host path and while making online replace with your website domain name
                            ActivationUrl = Server.HtmlEncode("http://localhost:55323/karnal/SuccessfullyActivated.aspx?EmailId=" + emailId);

                            msg.Body = "Hi " + FirstName.Text.Trim() + "  " + LastName.Text.Trim() +
                                  ", <br> Thanks for showing interest and registering in <a href='http://www.karnal.info'> Karnal.info <a> " +
                                  " . <br> Please <a href='" + ActivationUrl + "'>click here to activate</a>  your account and enjoy our services. <br><br>Thanks! <br>For Further Queries mail us to contactus@karnal.info"
                                  + "<br><br> With Regards, <br> Karnal.info <br> Copyright &copy; 2014";
                            msg.IsBodyHtml = true;
                            smtp.Credentials = new NetworkCredential("karnalharyana.info@gmail.com", "9729293126");
                            smtp.Port = 587;
                            smtp.Host = "smtp.gmail.com";
                            smtp.EnableSsl = true;
                            smtp.Send(msg);
                            PanelSignup.Visible = false;
                            PanelSuccess.Visible = true;

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
                    }
                }
            }
        }
     
        //PanelSignup.Visible = false;
        //PanelSuccess.Visible = true;

}
    //private string FetchUserId(string emailId)
    //{
    //    SqlCommand cmd = new SqlCommand();
    //    cmd = new SqlCommand("SELECT UserId FROM Tb_Registration WHERE EmailId=@EmailId", con);
    //    cmd.Parameters.AddWithValue("@EmailId", emailId);
    //    if (con.State == ConnectionState.Closed)
    //    {
    //        con.Open();
    //    }
    //    string UserID = Convert.ToString(cmd.ExecuteScalar());
    //    con.Close();
    //    cmd.Dispose();
    //    return UserID;
    //}
    //private void clear_controls()
    //{
    //    FirstName.Text = string.Empty;
    //    LastName.Text = string.Empty;
    //    Email.Text = string.Empty;
    //    Password.Text = string.Empty;
    //    Address.Text = string.Empty;
    //    Contact.Text = string.Empty;
    //    Occupation.Text = string.Empty;
    //    FirstName.Focus();
    //}

}
   


