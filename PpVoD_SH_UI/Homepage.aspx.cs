using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PpVoD_SH_UI
{
    public partial class Homepage : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ////temporary hardcoded data to test navbar, renthistory
            //Session["uName"] = "Anais";
            //Session["uCredits"] = 10;
            //Session["uEmail"] = "anais@anais.anais";

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

        //protected async void BtnGetVideobyNumber_Click(object sender, EventArgs e)
        //{
        //    int inputID = Convert.ToInt32(tbxVideoNumber.Text);
        //    List<Models.VideoElement> vResult = await new Models.VideoElement().GetVideoByIDAsync(inputID);

        //    ltlResult.Text = "Name: " + vResult[0].Title + "  ID: " + vResult[0].ID + "  Price: " + vResult[0].Price + "  Genre: " + vResult[0].Genre;
        //}

        //protected async void BtnAllVideos_Click(object sender, EventArgs e)
        //{
        //    List<Models.VideoElement> vList = await new Models.VideoElement().GetVideosAsync();

        //    foreach (Models.VideoElement v in vList)
        //    {
        //        ltlAllResults.Text = ltlAllResults.Text + "Name: " + v.Title + "  ID: " + v.ID + "  Price: " + v.Price + "  Genre: " + v.Genre + "<br/>";
        //    }
        //}

        /* display carousel trending
         */
    }
}