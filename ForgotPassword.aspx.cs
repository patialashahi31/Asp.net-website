using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Net.Mail;
using System.Net;


public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
         String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
         using (SqlConnection con = new SqlConnection(CS))
         {
             SqlCommand cmd = new SqlCommand("Select * from UserInfo where Email='" + TextBox1.Text +"'", con);
             con.Open();
             SqlDataAdapter sda = new SqlDataAdapter(cmd);
             DataTable dt = new DataTable();
             sda.Fill(dt);

             if (dt.Rows.Count != 0)
             {
                 String myGUID = Guid.NewGuid().ToString();
                 int Uid = Convert.ToInt32(dt.Rows[0][0]);
                 SqlCommand cmd1 = new SqlCommand("Insert into ForgotPassRequests values('" + myGUID + "','" + Uid + "',getdate())", con);

                 cmd1.ExecuteNonQuery();
                 

                 Label1.Text = "Check your email to reset password";
                 Label1.ForeColor = Color.Green;
             }
             else
             {
                 Label1.Text = "This email does not exist";
                 Label1.ForeColor = Color.Red;
             }


         }

    }
}