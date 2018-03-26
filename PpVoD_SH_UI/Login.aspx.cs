using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace PpVoD_SH_UI
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            string newName = tbxName.Text;
            string newEmail = tbxEmail.Text;
            string newPassword = tbxPassword.Text;

            //input validation

            //Create a new User object.
            //UserAccount newUser{
            //    "Name": newName,
            //    "Email": newEmail,
            //    "Password": newPassword,
            //    "LastLogin": DateTime.Now
            //};

            //// Add the new object to the users collection.
            //PpVoD_Db_SH.Users.InsertOnSubmit(newUser);
            //// Submit the change to the database. 
            //try
            //{
            //    PpVoD_Db_SH.SubmitChanges();
            //}
            //catch (Exception ex)
            //{
            //    PpVoD_Db_SH.SubmitChanges();
            //}

            //Redirect to useraccount
        }

        protected async void BtnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                //atm it returns "invalid url format" error
                bool okLogged = await new Models.UserAccount().GetLoginAsync(tbxUsername.Text, tbxPass.Text);

                if (okLogged == true)
                {
                    Session.Add("uName", tbxUsername.Text);
                    //retrieve info from db of the user
                    //put the info in session

                    Response.Redirect("Browse.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();

                    //temporary hardcoded data to test login
                    Session["uCredits"] = 25;

                    //!!!Session.add: credits, name, renthistory
                    
                }
                else
                {
                    lblErrors.Text = "Email and password do not match";
                    lblErrors.Visible = true;
                }
            }
            catch(Exception ex)
            {

            }
        }
    }

}