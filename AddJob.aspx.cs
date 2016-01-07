using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.SessionState;

public partial class AddJob : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["KarnalConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
   if (Session["Log"] != null && Session["Log"].ToString() == "karnal")
        {

        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
        string qry1 = "Select User_Id from Users where Email_Id='" + Session["Email"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(qry1, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            UserId.Text = dr[0].ToString();
        }
        con.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime dt = DateTime.Now;
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from Jobs";
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds, "Jobs");
        SqlCommandBuilder cb = new SqlCommandBuilder(da);
        DataRow drow = ds.Tables["Jobs"].NewRow();
        drow["User_Id"] = UserId.Text;
        drow["Post"] = job.Text;
        drow["Seats"] = seats.Text;
        drow["Email_id"] = Email.Text;
        drow["Last_Date"] = Date.Text;
        drow["Experience"] = Experience.Text;
        drow["Description"] = Description1.Text;
        drow["Skills"] = Skills1.Text;
        drow["Company"] = company.Text;
        drow["Location"] = Location.Text;
        drow["Person"] = Person.Text;
        drow["Mobile"] = Mobile.Text;
        drow["Phone"] = Phone.Text;
        drow["Website"] = Website.Text;
        drow["Address"] = Address1.Text;
        drow["Date"] = dt.ToShortDateString();
        ds.Tables["Jobs"].Rows.Add(drow);
        da.Update(ds, "Jobs");
        Panel1.Visible = false;
        Panel2.Visible = true;
    }

    protected void Login1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Login.aspx");
    }
}