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

            //validation

            //Create a new User object.
            //UserAccount newUser{
            //    "Name": newName,
            //    "Email": newEmail,
            //    "Password": newPassword,
            //    "LastLogin": DateTime.Now
            //};

            //// Add the new object to the Orders collection.
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
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string inputUsername = tbxUsername.Text;
            string inputPassword = tbxPass.Text;
            Session.Add("uName", inputUsername);

            //retrieve amount of credits for this account, to be used in session
            //{
            //    Response.Redirect("UserAccount.aspx");
            //    Session.Add("currentUser", inputUsername);
            //}
            //{
            //    lblErrors.Text = "Email and password do not match";
            //    lblErrors.Visible = true;
            //}
        }
    }

}