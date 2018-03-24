using System;
using PpVoD_SH.Models;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace PpVoD_SH.Controllers
{
    public class VideoElementController : ApiController
    {
        TestDBDataContext db = new TestDBDataContext();

        public IEnumerable<Video> GetAllVideos()
        {
            return from v in db.Videos
                   select v;
        }

        [Route ("api/videoElement/getbygenre")]
        public IHttpActionResult GetVideoByGenre(string Genre)
        {
            var query = (from v in db.Videos
                         where v.Genre == Genre
                         select v).ToList();

            Console.WriteLine(query[0].Title);

            if (query == null)
                return NotFound();
            return Ok(query);
        }

        [Route ("api/videoElement/getbyid")]
        public IHttpActionResult GetVideoById(int inputID)
        {
            var query = (from v in db.Videos
                         where v.Id == inputID
                         select v).ToList();

            if (query == null)
                return NotFound();
            return Ok(query);
        }
    }
}
