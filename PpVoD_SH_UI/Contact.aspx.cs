using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PpVoD_SH_UI
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //navbar logged in
            if (Session["uName"] != null)//logged in
            {
                lblRegister.Text = "Welcome back, " + (string)Session["uName"];
                int currentcredits = Convert.ToInt32(Session["uCredits"]);
                lblCredit.Text = "Credits: " + currentcredits.ToString();
                lblCredit.Visible = true;
            }
        }

        protected void NavbarClick(object sender, EventArgs e)
        {
            if (Session["uName"] != null)//logged in
            {
                Response.Redirect("UserAccount.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            else
            {
                Response.Redirect("Login.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
        }
    }
}