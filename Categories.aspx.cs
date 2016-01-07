using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Categories : System.Web.UI.Page
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