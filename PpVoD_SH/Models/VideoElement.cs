using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PpVoD_SH.Models
{
    public class VideoElement
    {
        public string ID { get; set; }
        public string Title { get; set; }
        public string Plot { get; set; }
        public string Genre { get; set; }
        public int Price { get; set; }
        public int Rating { get; set; }
        public int Year { get; set; }
        // + thumbnail picture

    }
}