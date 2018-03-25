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
            ////temporary hardcoded data to test msgBox, redirect
            //Session["uCredits"] = 10;

            //navbar logged in
            if (Session["uName"]!=null)//logged in
            {
                lblRegister.Text = "Welcome back, " + (string)Session["uName"];
                int currentcredits = Convert.ToInt32(Session["uCredits"]);
                lblCredit.Text = "Credits: " + currentcredits.ToString();
                lblCredit.Visible = true;
            }

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


            //not enough credits message
                if (Request.Form["hid_f"] == "1")   //if user clicks "OK" to confirm 
                {
                    Request.Form["hid_f"].Replace("1", "0");
                    //Reset the hidden field back to original value "0"

                    //Put the continuing processing code 
                    Response.Redirect("TopUp.aspx");
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

        protected void DL_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item ||
                e.Item.ItemType == ListItemType.AlternatingItem)
            {
                //Add eventhandlers for highlighting a DataListItem when the mouse hovers over it.
                //highlight solved in css
                e.Item.Attributes.Add("onmouseout","this.style.backgroundColor='transparent'");

                //Add eventhandler for simulating a click on the 'SelectButton'
                e.Item.Attributes.Add("onclick",
                       this.Page.ClientScript.GetPostBackEventReference(
                       e.Item.Controls[1], string.Empty));
            }
        }

        protected void DL_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //check if logged in
            if(Session["uName"]==null)
            {
                Response.Redirect("Login.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            else
            {
                try
                {
                    //check amount of credits
                    int currentCredits = Convert.ToInt32(Session["uCredits"]);
                    int moviePrice = Convert.ToInt32(((Literal)e.Item.FindControl("Literal3")).Text);

                    if (currentCredits < moviePrice)
                        //display message to top up, else go along         
                        MsgBox1.confirm("Oh no! You don't have enough credits to rent this movie! Would you like to top up now? ", "hid_f");
                    else
                    {
                        //put in session all video details for Watching
                        Session["wTitle"] = ((Literal)e.Item.FindControl("Literal1")).Text;
                        Session["wYear"] = ((Literal)e.Item.FindControl("Literal2")).Text;
                        Session["wPrice"] = ((Literal)e.Item.FindControl("Literal3")).Text;
                        Session["wRating"] = ((Literal)e.Item.FindControl("Literal4")).Text;
                        Session["wPlot"] = ((Literal)e.Item.FindControl("Literal5")).Text;

                        //deduct amount of credits
                        Session["uCredits"] = currentCredits - moviePrice;

                        //redirect to Watching 
                        Response.Redirect("Watching.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                }
                catch (System.Threading.ThreadAbortException)
                {
                    //Do nothing.  The exception will get rethrown by the framework when this block terminates.
                }
            }

            
        }
    }
}