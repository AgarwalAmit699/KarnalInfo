using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class AddCompany : System.Web.UI.Page
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
    protected void Add_Click(object sender, EventArgs e)
    {
        DateTime dt = DateTime.Now;
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from Company";
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds, "Company");
        SqlCommandBuilder cb = new SqlCommandBuilder(da);
        DataRow drow = ds.Tables["Company"].NewRow();
        drow["User_Id"] = UserId.Text;
        drow["Category"] = Category.SelectedItem;
        drow["Person"] = ContactPerson.Text;
        drow["C_Name"] = CompanyName.Text;
        drow["Mobile_No"] = Mobile.Text;
        drow["Tagline"] = Tagline.Text;
        drow["Phone"] = Phone.Text;
        drow["Email_Id"] = Email.Text;
        drow["Website"] = Website.Text;
        drow["Date"] = dt.ToShortDateString();
        drow["Address"] = Address1.Text;
        drow["Shop"] = Shop.Text;
        drow["Gali"] = Gali.Text;
        ds.Tables["Company"].Rows.Add(drow);
        da.Update(ds, "Company");
        Panel1.Visible = false;
        Panel2.Visible = true;
        
    }
    protected void Login1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Login.aspx");
    }
}