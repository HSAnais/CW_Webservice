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

        [Route("api/userAccount/getlogin")]
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

            //return query;

            if (query == null)
                return NotFound();
            return Ok(query);
        }
    }
}