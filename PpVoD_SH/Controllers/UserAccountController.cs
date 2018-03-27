using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Data.Linq;

namespace PpVoD_SH.Controllers
{
    public class UserAccountController : ApiController
    {
        TestDBDataContext db = new TestDBDataContext();

        [Route("api/userAccount/getlogin"), AcceptVerbs("GET")]
        public IHttpActionResult GetLogin(string email, string password)
        {
            using (TestDBDataContext tdb = new TestDBDataContext())
            {
                if (tdb.Users.Where(x => x.Email == email).Count() == 1)
                    if (tdb.Users.Where(x => x.Email == email && x.Password == password).Count() == 1)
                        return Ok(true);

                return NotFound();
            }
        }
        
        [Route("api/userAccount/getrenthistory")]
        public IHttpActionResult GetRentHistory(string email)
        {
            string query = (from u in db.Users
                            where u.Email == email
                            select u.RentHistory).First();

            if (query == null)
                return NotFound();
            return Ok(query);
        }

        [Route("api/userAccount/")]
        public IHttpActionResult Create(User newUser)
        {
            // Add the new object to the table
            db.Users.InsertOnSubmit(newUser);

            // Submit the change to the database.
            try
            {
                db.SubmitChanges();
                return Ok(true);
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                return NotFound();
            }
        }

        [Route("api/userAccount/getbyemail")]
        public IHttpActionResult GetUserByEmail(string Email)
        {
            var query = (from u in db.Users
                         where u.Email == Email
                         select u).ToList();

            if (query == null)
                return NotFound();
            return Ok(query);
        }
    }
}