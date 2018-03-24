using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace PpVoD_SH_UI
{
    public partial class Browse : System.Web.UI.Page
    {
        protected async void Page_Load(object sender, EventArgs e)
        {
            //retrieve videos by genre
            List<Models.VideoElement> vAction = await new Models.VideoElement().GetVideoByGenreAsync("Action");
            List<Models.VideoElement> vAdventure = await new Models.VideoElement().GetVideoByGenreAsync("Adventure");
            List<Models.VideoElement> vAnimation = await new Models.VideoElement().GetVideoByGenreAsync("Animation");
            List<Models.VideoElement> vDocumentary = await new Models.VideoElement().GetVideoByGenreAsync("Documentary");
            List<Models.VideoElement> vDrama = await new Models.VideoElement().GetVideoByGenreAsync("Drama");
            List<Models.VideoElement> vFantasy = await new Models.VideoElement().GetVideoByGenreAsync("Fantasy");
            List<Models.VideoElement> vHorror = await new Models.VideoElement().GetVideoByGenreAsync("Horror");
            List<Models.VideoElement> vScifi = await new Models.VideoElement().GetVideoByGenreAsync("Sci-fi");

            //place them in datalists
            dlAction.DataSource = vAction;
            dlAction.DataBind();

            dlAdventure.DataSource = vAdventure;
            dlAdventure.DataBind();

            dlAnimation.DataSource = vAnimation;
            dlAnimation.DataBind();

            dlDocumentary.DataSource = vDocumentary;
            dlDocumentary.DataBind();

            dlDrama.DataSource = vDrama;
            dlDrama.DataBind();

            dlFantasy.DataSource = vFantasy;
            dlFantasy.DataBind();

            dlHorror.DataSource = vHorror;
            dlHorror.DataBind();

            dlScifi.DataSource = vScifi;
            dlScifi.DataBind();
        }
    }
}