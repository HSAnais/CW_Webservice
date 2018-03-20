using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace PpVoD_SH_UI
{
    public partial class Browse : System.Web.UI.Page
    {
        protected async void Page_Load(object sender, EventArgs e)
        {
            //retrieve videos by genre
            List<Models.VideoElement> vAction = await new Models.VideoElement().GetVideoByGenreAsync("Action");
            List<Models.VideoElement> vAdventure = await new Models.VideoElement().GetVideoByGenreAsync("Adventure");
            List<Models.VideoElement> vComedy = await new Models.VideoElement().GetVideoByGenreAsync("Comedy");
            List<Models.VideoElement> vDocumentary = await new Models.VideoElement().GetVideoByGenreAsync("Documentary");
            List<Models.VideoElement> vDrama = await new Models.VideoElement().GetVideoByGenreAsync("Drama");
            List<Models.VideoElement> vHorror = await new Models.VideoElement().GetVideoByGenreAsync("Horror");
            List<Models.VideoElement> vRomantic = await new Models.VideoElement().GetVideoByGenreAsync("Romantic");
            List<Models.VideoElement> vThriller = await new Models.VideoElement().GetVideoByGenreAsync("Thriller");

            //place them in views
            viewAction.DataSource = vAction;
            viewAction.DataBind();
            viewAdventure.DataSource = vAdventure;
            viewAdventure.DataBind();
            viewComedy.DataSource = vComedy;
            viewComedy.DataBind();
            viewDocumentary.DataSource = vDocumentary;
            viewDocumentary.DataBind();
            viewDrama.DataSource = vDrama;
            viewDrama.DataBind();
            viewHorror.DataSource = vHorror;
            viewHorror.DataBind();
            viewRomantic.DataSource = vRomantic;
            viewRomantic.DataBind();
            viewThriller.DataSource = vThriller;
            viewThriller.DataBind();
        }
    }
}