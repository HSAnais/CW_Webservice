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
            int inputID = Convert.ToInt32(tbxVideoNumber.Text);
            List<Models.VideoElement> vResult = await new Models.VideoElement().GetVideoByIDAsync(inputID);

            ltlResult.Text = "Name: " + vResult[0].Title + "  ID: " + vResult[0].ID + "  Price: " + vResult[0].Price + "  Genre: " + vResult[0].Genre;
        }

        protected async void BtnAllVideos_Click(object sender, EventArgs e)
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