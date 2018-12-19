using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["UNAME"] != null && Request.Cookies["PWD"] != null)
            {
                TextBox1.Text = Request.Cookies["UNAME"].Value;
                TextBox2.Attributes["value"] = Request.Cookies["PWD"].Value;
                CheckBox1.Checked = true;

            }

        }

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd= new SqlCommand("Select * from UserInfo where Username='"+TextBox1.Text+"' and Password='"+TextBox2.Text+"'",con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if(dt.Rows.Count!=0){
                if (CheckBox1.Checked)
                {
                    Response.Cookies["UNAME"].Value = TextBox1.Text;
                    Response.Cookies["PWD"].Value = TextBox2.Text;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(20);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(20);

                  
                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                }

                String Utype;
                Utype = dt.Rows[0][5].ToString().Trim();

                if (Utype == "U")
                {
                    Session["USERNAME"] = TextBox1.Text;
                    Response.Redirect("~/UserHome.aspx");
                }
                if (Utype == "A")
                {
                    Session["USERNAME"] = TextBox1.Text;
                    Response.Redirect("~/AdminHome.aspx");
                }

               

            }else{
                lblError.Text = "Username or Password is invalid";
            }


        }

    }
    protected void Recoverpass_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ForgotPassword.aspx");
    }
}