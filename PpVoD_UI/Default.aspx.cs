﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PpVoD_UI
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void BtunGetVideobyNumber_Click(object sender, EventArgs e)
        {
            Models.VideoElement v = await new Models.VideoElement().GetVideoByIDAsync(tbxVideoNumber.Text);

            ltlResult.Text = "Name: " + v.Title + "  ID: " + v.ID + "  Price: " + v.Price + "  Genre: " + v.Genre;
        }

        protected async void btnAllVideos_Click(object sender, EventArgs e)
        {
            List<Models.VideoElement> vList = await new Models.VideoElement().GetVideosAsync();

            foreach (Models.VideoElement v in vList)
            {
                ltlAllResults.Text = ltlAllResults.Text + "Name: " + v.Title + "  ID: " + v.ID + "  Price: " + v.Price + "  Genre: " + v.Genre + "<br/>";
            }
        }
    }
}