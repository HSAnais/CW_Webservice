using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PpVoD_SH_UI
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void BtnRegister_Click(object sender, EventArgs e)
        {
            string newName = tbxName.Text;
            string newEmail = tbxEmail.Text;
            string newPassword = tbxPassword.Text;

            //validation

            //Create a new User object.
            UserAccount newUser = new UserAccount{
                //ID++,
                Name=newName,
                Email=newEmail,
                Password=newPassword,
                LastLogin=DateTime.Now
            };
            // Add the new object to the Orders collection.
            db.Users.InsertOnSubmit(newUser);
            // Submit the change to the database. 
            try
            {
                db.SubmitChanges();
            }
            catch (Exception e)
            {
                db.SubmitChanges();
            }
        }

        protected bool BtnLogin_Click(object sender, EventArgs e)
        {
            string inputUsername = tbxUsername.Text;
            string inputPassword = tbxPass.Text;

            using (TestDBDataContext tdb = new TestDBDataContext())
            {
                if (tdb.Users.Where(x => x.Email == inputUsername).Count() == 1)
                    if (tdb.Users.Where(x => x.Email == inputUsername && x.Password == inputPassword).Count() == 1)
                        return true;
                    else
                        return false;
                else
                    return false;
            }
        }
    }

}