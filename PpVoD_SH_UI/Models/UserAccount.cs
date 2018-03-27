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
        public string Creditcard { get; set; }
        public int Credits { get; set; }
        public string RentHistory { get; set; }

        public async Task<bool> GetLoginAsync(string email, string password)
        {
            // Create request
            var request = HttpWebRequest.Create(string.Format(@"{0}userAccount/getlogin?email={1}&password=" + HttpUtility.UrlEncode(password), url, HttpUtility.UrlEncode(email)));
            request.ContentType = "application/json"; // tell the API we want Json returned
            request.Method = "GET";
            try
            {
                // Get response wrom Web API
                using (HttpWebResponse response = await request.GetResponseAsync() as HttpWebResponse)
                {
                    // Check status
                    if (response.StatusCode != HttpStatusCode.OK)
                        return false;

                    // Get response stream & deserialize list of certificates using Json.NET
                    using (StreamReader reader = new StreamReader(response.GetResponseStream()))
                        return JsonConvert.DeserializeObject<bool>(reader.ReadToEnd());
                }
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public async Task<string> GetRentHistoryAsync(string inEmail)
        {
            // Create request
            var request = HttpWebRequest.Create(string.Format(@"{0}userAccount/getrenthistory?email=" + inEmail, url));
            request.ContentType = "application/json"; // tell the API we want Json returned
            request.Method = "GET";
            try
            {
                // Get response wrom Web API
                using (HttpWebResponse response = await request.GetResponseAsync() as HttpWebResponse)
                {
                    // Check status
                    if (response.StatusCode != HttpStatusCode.OK)
                        Console.WriteLine(String.Format("Error ...", response.StatusCode));

                    // Get response stream & deserialize list of certificates using Json.NET
                    using (StreamReader reader = new StreamReader(response.GetResponseStream()))
                        return JsonConvert.DeserializeObject<string>(reader.ReadToEnd());
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        //not working
        public async Task<bool> CreateUserAsync(UserAccount newUser)
        {
            // Create request
            var request = HttpWebRequest.Create(string.Format(@"{0}userAccount/" + url));
            request.ContentType = "application/json"; // tell the API we want Json returned
            request.Method = "POST";
            try
            {
                // Get response wrom Web API
                using (HttpWebResponse response = await request.GetResponseAsync() as HttpWebResponse)
                {
                    // Check status
                    if (response.StatusCode != HttpStatusCode.OK)
                        Console.WriteLine(String.Format("Error ...", response.StatusCode));

                    // Get response stream & deserialize list of certificates using Json.NET
                    using (StreamReader reader = new StreamReader(response.GetResponseStream()))
                        return JsonConvert.DeserializeObject<bool>(reader.ReadToEnd());
                }
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public async Task<List<UserAccount>> GetUserByEmailAsync(string Email)
        {
            // Create request
            var request = HttpWebRequest.Create(string.Format(@"{0}userAccount/getbyemail?email=" + Email, url));
            request.ContentType = "application/json"; // tell the API we want Json returned
            request.Method = "GET";

            try
            {
                // Get response wrom Web API

                using (HttpWebResponse response = await request.GetResponseAsync() as HttpWebResponse)
                {
                    // Check status
                    if (response.StatusCode != HttpStatusCode.OK)
                        Console.WriteLine(String.Format("Error ...", response.StatusCode));

                    // Get response stream & deserialize list of certificates using Json.NET
                    using (StreamReader reader = new StreamReader(response.GetResponseStream()))
                        return JsonConvert.DeserializeObject<List<UserAccount>>(reader.ReadToEnd());
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}