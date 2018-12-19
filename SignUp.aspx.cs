using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
 
public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btSignup_Click(object sender, EventArgs e)
    {
       
        if (tbUname.Text != "" & tbEmail.Text != "" & tbCPass.Text != "" & tbName.Text != "" & tbPass.Text != "")
        {
            if (tbPass.Text == tbCPass.Text)
            {

                String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("Insert into UserInfo(Username,Password,Email,Name,UserType) values('" + tbUname.Text + "','" + tbPass.Text + "','" + tbEmail.Text + "','" + tbName.Text + "','U')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblMsg.ForeColor = Color.Green;
                    lblMsg.Text = "Sign up successfull";
                    Response.Redirect("~/SignIn.aspx");
                }
            }
            else {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "Passwords should be same";
            }
        }
        else
        {
            lblMsg.ForeColor = Color.Red;
            lblMsg.Text = "All fields are required";
        }


    }
    protected void tbCPass_TextChanged(object sender, EventArgs e)
    {

    }
}