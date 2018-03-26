using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PpVoD_SH_UI
{
    public partial class UserAccount : System.Web.UI.Page
    {
        protected async void Page_Load(object sender, EventArgs e)
        {
            
            //navbar
            lblRegister.Text = "Welcome back, " + (string)Session["uName"];
            int currentcredits = Convert.ToInt32(Session["uCredits"]);
            lblCredit.Text = "Credits: " + currentcredits.ToString();

            //fill page with User info
            lblWelcome.Text = "<span style='font-weight:bold; font-size:30px;'>Welcome back, " + (string)Session["uName"] + "</span>";
            lblAmount.Text = "You have <span style='color:#087f8c; font-weight:bold;'>" + currentcredits.ToString() + "</span> credits.";

            //retrieve History
            //retrieve array from users table
            string currentUser = (string)Session["uName"];
            string uRentHistory = await new Models.UserAccount().GetRentHistoryAsync(currentUser);
            List<int> historyIDs = new List<int>(Array.ConvertAll(uRentHistory.Split(','), int.Parse));

            //temporary hardcoded data to test renthistory
            //int[] historyIDs = { 2, 5, 7, 8, 10 };
            Session["uHistory"] = historyIDs;            

            //retrieve the videos for display
            List<int> updatedHistory = (List<int>)Session["uHistory"];
            List<Models.VideoElement> vHistory = new List<Models.VideoElement>();
            foreach (int i in updatedHistory)
            {
                List<Models.VideoElement> video = await new Models.VideoElement().GetVideoByIDAsync(i);
                vHistory.Add(video[0]);
            }

            //place it in datalist
            dlHistory.DataSource = vHistory;
            dlHistory.DataBind();

            //not enough credits message
            if (Request.Form["hid_f"] == "1")   //if user clicks "OK" to confirm 
            {
                Request.Form["hid_f"].Replace("1", "0");
                //Reset the hidden field back to original value "0"

                //Put the continuing processing code 
                Response.Redirect("TopUp.aspx");
            }
        }

        protected void DL_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item ||
                e.Item.ItemType == ListItemType.AlternatingItem)
            {
                //Add eventhandlers for highlighting a DataListItem when the mouse hovers over it.
                //highlight solved in css
                e.Item.Attributes.Add("onmouseout", "this.style.backgroundColor='transparent'");

                //Add eventhandler for simulating a click on the 'SelectButton'
                e.Item.Attributes.Add("onclick",
                       this.Page.ClientScript.GetPostBackEventReference(
                       e.Item.Controls[1], string.Empty));
            }
        }

        protected void DL_ItemCommand(object source, DataListCommandEventArgs e)
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

        protected void BtnAddCredits_Click(object sender, EventArgs e)
        {
            Response.Redirect("TopUp.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }

        protected void BtnEditAccount_Click(object sender, EventArgs e)
        {
            //implement edit functionality
            //Response.Redirect("UserAccount.aspx", false);
            //Context.ApplicationInstance.CompleteRequest();
        }

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            //!!!update tuple in db

            //clear Session variables
            Session["uName"] = null;
            Session["uCredits"] = null;
            Session["uHistory"] = null;

            //redirect to homepage
            Response.Redirect("Homepage.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }

        protected void NavbarClick(object sender, EventArgs e)
        {
            Response.Redirect("UserAccount.aspx", false);
            Context.ApplicationInstance.CompleteRequest();            
        }
    }
}