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
        //array: query a database or use an external data source
        VideoElement[] videos = new VideoElement[]
        {
            new VideoElement{ID = 1, Title = "Star Wars: Episode IV – A New Hope", Genre = "Action, Drama", Plot = "Lorem ipsum 01", Price = 3, Rating = 7, Year = 1977 },
            new VideoElement{ID = 2, Title = "Star Wars: Episode V – The Empire Strikes Back", Genre = "Action, Drama", Plot = "Lorem ipsum 02", Price = 2, Rating = 6, Year = 1980 },
            new VideoElement{ID = 3, Title = "Star Wars: Episode VI – Return of the Jedi", Genre = "Action, Drama", Plot = "Lorem ipsum 03",Price = 3, Rating = 8, Year = 1983 }
        };

        public IEnumerable<VideoElement> GetAllVideos()
        {
            return videos;
        }

        [Route ("api/videoElement/getbyid")]
        public IHttpActionResult GetVideo(int inputID)
        {
            VideoElement video = videos.FirstOrDefault((v) => v.ID == inputID);

            if (video == null)
                return NotFound();
            return Ok(video);
        }
    }
}
