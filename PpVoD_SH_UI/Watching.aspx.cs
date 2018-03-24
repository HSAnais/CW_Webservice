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
            //lblRating.Text = "Rating: " + Session["wVideoRating"].ToString();
            //lblTitle.Text = "Rating: " + Session["wVideoTitle"].ToString();
            //lblGenreYear.Text = "Genre: " + Session["wVideoGenre"].ToString() + " Year: " + Session["wVideoYear"];
            //lblPlot.Text = Session["wVideoPlot"].ToString();

            //add +1 in Videos table for number of views
            //add the videoid in rentHistory

            //Session["wVideo"] == null;
        }

        protected void FinishVideoBtn_Click(object sender, EventArgs e)
        {
            //warning message: are you sure? y:redirect n: close message

            Response.Redirect("Browse.aspx");
        }


    }
}