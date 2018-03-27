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
            string newCard = tbxCreditCard.Text;

            //input validation
            if (newName == null || newEmail == null || newPassword == null || newCard == null)
            {
                lblRegisterErrors.Text = "Please complete all fields to register an account";
                lblRegisterErrors.Visible = true;
            }
            else
            {
                try
                {
                    //push new user to db
                    //UserAccount newUser = [];

                    //add to session user details
                    Session.Add("uName", newName);
                    Session["uCredits"] = 0;

                    //Redirect to useraccount
                    Response.Redirect("UserAccount.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }
                catch(Exception ex)
                {
                    lblRegisterErrors.Text = ex.Message;
                    lblRegisterErrors.Visible = true;
                }
            }
        }

        protected async void BtnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                //check if there is an account in table
                bool okLogged = await new Models.UserAccount().GetLoginAsync(tbxUsername.Text, tbxPass.Text);

                if (okLogged == true)
                {
                    //retrieve info from db of the user
                    List<Models.UserAccount> uLogged = await new Models.UserAccount().GetUserByEmailAsync(tbxUsername.Text);
                    
                    //put the info in session
                    Session.Add("uEmail", tbxUsername.Text);
                    Session.Add("uName", uLogged[0].Name);
                    Session.Add("uHistory", uLogged[0].RentHistory);
                    Session.Add("uCredits", uLogged[0].Credits);

                    //!!!last login=datetime.now();

                    //Response.Redirect("Browse.aspx", false);
                    Response.Redirect("UserAccount.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();            
                }
                else
                {
                    lblLoginErrors.Text = "Email and password do not match";
                    lblLoginErrors.Visible = true;
                }
            }
            catch(Exception ex)
            {

            }
        }
    }

}