using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ComputerSalesRepair : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Log"] != null && Session["Log"].ToString() == "karnal")
        {
            HyperLink1.NavigateUrl = "~/AddJob.aspx";
            HyperLink2.NavigateUrl = "~/AddCompany.aspx";
            Signup.Visible = false;
            Login.Text = "Log Out";
            Login.BackColor = System.Drawing.ColorTranslator.FromHtml("#DB5A5B");
            Login.ForeColor = System.Drawing.ColorTranslator.FromHtml("#FFFFFF");
        }
        else
        {
            HyperLink1.NavigateUrl = "~/Login.aspx";
            HyperLink2.NavigateUrl = "~/Login.aspx";
        }


    }

    protected void Signup_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Signup.aspx");
    }
    protected void Login_Click(object sender, EventArgs e)
    {
        if (Session["Log"] != null && Session["Log"].ToString() == "karnal")
        {
            Session.Clear();
            Signup.Visible = true;
            Login.Text = "Log In";
            Login.BackColor = System.Drawing.ColorTranslator.FromHtml("#E4E4E4");
            Login.ForeColor = System.Drawing.ColorTranslator.FromHtml("#000000");
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}