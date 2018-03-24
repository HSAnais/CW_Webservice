using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;
using System.IO;
using System.Net;
using System.Threading.Tasks;
using System.Drawing;
namespace PpVoD_SH_UI.Models
{
    public class UserAccount
    {
        private string url = "http://localhost:58223/api/";

        public int ID { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public DateTime LastLogin { get; set; }

        //public async Task<UserAccount> UserLoginAsync(string inUsername, string inPassword)
        //{
        //    // Create request
        //    var request = HttpWebRequest.Create(string.Format(@"{0}UserAccount/Login?Email={1}&Password={2}" + inPassword, inUsername, url));
        //    request.ContentType = "application/json"; // tell the API we want Json returned
        //    request.Method = "GET";
        //    try
        //    {
        //        // Get response wrom Web API
        //        using (HttpWebResponse response = await request.GetResponseAsync() as HttpWebResponse)
        //        {
        //            // Check status
        //            if (response.StatusCode != HttpStatusCode.OK)
        //                Console.WriteLine(String.Format("Error ...", response.StatusCode));

        //            // Get response stream & deserialize list of certificates using Json.NET
        //            using (StreamReader reader = new StreamReader(response.GetResponseStream()))
        //                return JsonConvert.DeserializeObject<UserAccount>(reader.ReadToEnd());
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        return null;
        //    }
        //}
    }
}