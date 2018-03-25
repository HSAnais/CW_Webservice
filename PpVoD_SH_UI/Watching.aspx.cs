using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PpVoD_SH_UI
{
    public partial class Watching : System.Web.UI.Page
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

            lblRating.Text = "<span style='font-weight:bold;'>Rating: </span>" + (string)Session["wRating"];
            lblTitle.Text = "<span style='font-weight:bold; font-size:20px;'>Title: " + (string)Session["wTitle"] + "</span>";
            lblYear.Text = "<span style='font-weight:bold;'>Year: </span>" + (string)Session["wYear"];
            lblPlot.Text = (string)Session["wPlot"];

            //add +1 in Videos table for number of views

            //add the videoid in rentHistory

            //finish viewing message
                if (Request.Form["hid_f"] == "1")   //if user clicks "OK" to confirm 
                {
                    Request.Form["hid_f"].Replace("1", "0");
                    //Reset the hidden field back to original value "0"

                    //Put the continuing processing code 
                    Response.Redirect("Browse.aspx");

                    //clear Session variables
                    Session["wTitle"] = null;
                    Session["wYear"] = null;
                    Session["wPrice"] = null;
                    Session["wRating"] = null;
                    Session["wPlot"] = null;
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

        protected void FinishVideoBtn_Click(object sender, EventArgs e)
        {
            //warning message: are you sure? y:redirect n: close message
            MsgBox1.confirm("To get back to this page you will have to pay the same amount of credits again. Are you sure you want to quit the current viewing? ", "hid_f");
        }


    }
}