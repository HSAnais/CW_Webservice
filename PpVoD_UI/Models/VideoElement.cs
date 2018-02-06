using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;

namespace PpVoD_UI.Models
{
    public class VideoElement
    {
        private string url = "http://localhost:58223/api/";

        public int ID { get; set; }
        public string Title { get; set; }
        public string Genre { get; set; }
        public int Price { get; set; }
        public int Rating { get; set; }
        public string Plot { get; set; }
        public int Year { get; set; }
        // + thumbnail picture

        public async Task<List<VideoElement>> GetVideosAsync()
        {
            // Create request
            var request = HttpWebRequest.Create(string.Format(@"{0}videos", url));
            request.ContentType = "application/json"; // tell the API we want Json returned
            request.Method = "GET";
            try
            {
                // Get response from Web API
                using (HttpWebResponse response = await request.GetResponseAsync() as HttpWebResponse)
                {
                    // Check status
                    if (response.StatusCode != HttpStatusCode.OK)
                        Console.WriteLine(String.Format("Error ...", response.StatusCode));

                    // Get response stream & deserialize list of certificates using Json.NET
                    using (StreamReader reader = new StreamReader(response.GetResponseStream()))
                        return JsonConvert.DeserializeObject<List<VideoElement>>(reader.ReadToEnd());
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public async Task<VideoElement> GetVideoByIDAsync(string id)
        {
            // Create request
            var request = HttpWebRequest.Create(string.Format(@"{0}videos/" + id, url));
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
                        return JsonConvert.DeserializeObject<VideoElement>(reader.ReadToEnd());
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}