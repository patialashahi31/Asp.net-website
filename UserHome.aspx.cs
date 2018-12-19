using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            lblSuccess.Text = "Login success,Welcome" + Session["USERNAME"].ToString() + "";
        }
        else
        {
            Response.Redirect("~/SignIn.aspx");
        }

    }
    protected void btnClick1(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Webform1.aspx");
    }

}