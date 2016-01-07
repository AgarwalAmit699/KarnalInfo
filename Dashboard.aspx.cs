using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Dashboard : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["KarnalConnectionString"].ConnectionString;
    string str = null;
    SqlCommand com;
    byte up;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Log"] != null && Session["Log"].ToString() == "karnal")
        {

        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
        PanelCompany.Visible = false;
        PanelJobs.Visible = false;
        PanelChangePassword.Visible = false;
        PanelProfile.Visible = false;
        string qry1 = "Select Name,User_Id from Users where Email_Id='"+ Session["Email"].ToString()+"'";
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand(qry1, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            LabelName.Text = dr[0].ToString();
            No.Text = dr[1].ToString();
        }
        con.Close();
        con.Open();
        string qry = "Select count(*) from Company where User_Id='" + No.Text + "'";
        SqlCommand cmd1 = new SqlCommand(qry, con);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            CompanyNo.Text = dr1[0].ToString();
        }
        con.Close();
        con.Open();
        string qry2 = "Select count(*) from Jobs where User_Id='" + No.Text + "'";
        SqlCommand cmd2 = new SqlCommand(qry2, con);
        SqlDataReader dr2 = cmd2.ExecuteReader();
        if (dr2.Read())
        {
            JobsNo.Text = dr2[0].ToString();
        }
        con.Close();

    }
    protected void ChangePassword_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            str = "select * from Users ";
            com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();
            while (reader.Read())
            {
                if (CurrentPass.Text == reader["Password"].ToString())
                {
                    up = 1;
                }
            }
            reader.Close();
            con.Close();
            if (up == 1)
            {
                con.Open();
                str = "update Users set Password=@Password where Email_Id='" + Session["Email"].ToString()+ "'";
                com = new SqlCommand(str, con);
                com.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar, 50));
                com.Parameters["@Password"].Value = NewPass.Text;
                com.ExecuteNonQuery();
                con.Close();
                PassChanged.Text = "Password changed Successfully";
            }
            else
            {
                PassChanged.Text = "Please enter correct Current password";
            }
        }
    protected void CompanyAdded_Click(object sender, EventArgs e)
    {
        PanelWelcome.Visible = false;
        PanelCompany.Visible = true;
        PanelJobs.Visible = false;
        PanelChangePassword.Visible = false;
        PanelProfile.Visible = false;
        
    }
    protected void JObsAdded_Click(object sender, EventArgs e)
    {
        PanelWelcome.Visible = false;
        PanelCompany.Visible = false;
        PanelJobs.Visible = true;
        PanelChangePassword.Visible = false;
        PanelProfile.Visible = false;
    }
    protected void ChangePass_Click(object sender, EventArgs e)
    {
        PanelWelcome.Visible = false;
        PanelCompany.Visible = false;
        PanelJobs.Visible = false;
        PanelChangePassword.Visible = true;
        PanelProfile.Visible = false;
    }
    protected void EditProfile_Click(object sender, EventArgs e)
    {
        PanelWelcome.Visible = false;
        PanelCompany.Visible = false;
        PanelJobs.Visible = false;
        PanelChangePassword.Visible = false;
        PanelProfile.Visible = true;
    }

    protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        PanelCompany.Visible = true;
    }
    protected void DetailsView2_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        PanelJobs.Visible = true;
    }
    protected void DetailsView3_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        PanelProfile.Visible = true;
    }
    protected void ChangePassword_Command(object sender, CommandEventArgs e)
    {
        PanelChangePassword.Visible = true;
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Login.aspx");
    }
    protected void Back_Click(object sender, EventArgs e)
    {
        PanelWelcome.Visible = true;
    }
}
