using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PpVoD_SH_UI
{
    public partial class TopUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAddCredits_Click(object sender, EventArgs e)
        {
            //tbxAmount.Text;
            //update UserAccount table

            //confirmation message with ok button
            Response.Write("<script>alert('Credits added successfully')</script>");
            
            //redirect to Browse
        }

        /* if loggedin
         *  { lblRegister.Text = "Welcome, " + user.name;
         *  lblCredit.Visible = True;
         *  lblCredit.Text = "Credits: " + user.credits;
         */
    }
}