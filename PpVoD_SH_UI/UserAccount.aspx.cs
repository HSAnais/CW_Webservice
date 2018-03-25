﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PpVoD_SH_UI
{
    public partial class UserAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //navbar
            lblRegister.Text = "Welcome back, " + (string)Session["uName"];
            int currentcredits = Convert.ToInt32(Session["uCredits"]);
            lblCredit.Text = "Credits: " + currentcredits.ToString();
        }

        protected void BtnAddCredits_Click(object sender, EventArgs e)
        {
            Response.Redirect("TopUp.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }

        protected void NavbarClick(object sender, EventArgs e)
        {
            Response.Redirect("UserAccount.aspx", false);
            Context.ApplicationInstance.CompleteRequest();            
        }
    }
}