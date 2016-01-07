using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SuccessfullyActivated : System.Web.UI.Page
{
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
        if (!Page.IsPostBack)
        {
            ActivateMyAccount();
        }
    }
    private void ActivateMyAccount()
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        try
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["KarnalConnectionString"].ConnectionString);

            if (!string.IsNullOrEmpty(Request.QueryString["EmailId"]))
            {
                //approve account by setting Is_Approved to 1 i.e. True in the sql server table

                cmd = new SqlCommand("UPDATE Users SET Is_Approved=1 WHERE Email_Id=@EmailId", con);
                cmd.Parameters.AddWithValue("@EmailId", Request.QueryString["EmailId"]);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.ExecuteNonQuery();
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
            return;
        }
        finally
        {
            con.Close();
            cmd.Dispose();
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