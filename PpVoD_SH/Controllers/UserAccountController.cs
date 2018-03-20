using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace PpVoD_SH.Controllers
{
    public class UserAccountController : ApiController
    {
        [Route("api/Users/Login?Email=[inputUsername]&Password=[inputPassword]"), AcceptVerbs("GET")]
        public bool UserLogin(string inputUsername, string inputPassword)
        {
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