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

        }

        protected async void BtnGetVideobyNumber_Click(object sender, EventArgs e)
        {
            Models.VideoElement vResult = await new Models.VideoElement().GetVideoByIDAsync(tbxVideoNumber.Text);

            ltlResult.Text = "Name: " + vResult.Title + "  ID: " + vResult.ID + "  Price: " + vResult.Price + "  Genre: " + vResult.Genre;
        }

        protected async void btnAllVideos_Click(object sender, EventArgs e)
        {
            List<Models.VideoElement> vList = await new Models.VideoElement().GetVideosAsync();

            foreach (Models.VideoElement v in vList)
            {
                ltlAllResults.Text = ltlAllResults.Text + "Name: " + v.Title + "  ID: " + v.ID + "  Price: " + v.Price + "  Genre: " + v.Genre + "<br/>";
            }
        }

        /* if loggedin
         *  { lblRegister.Text = "Welcome, " + user.name;
         *  lblCredit.Visible = True;
         *  lblCredit.Text = "Credits: " + user.credits;
         */

        /* display carousel trending
         * display carousel each genre
         */
    }
}