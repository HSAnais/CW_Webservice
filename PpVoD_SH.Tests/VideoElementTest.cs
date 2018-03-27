using System;
using System.Drawing;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using PpVoD_SH_UI.Models;

namespace PpVoD_SH.Tests
{
    [TestClass]
    public class VideoElementTest
    {
        // unit test code  
        [TestMethod]
        public async void GetVideoByIDAsyncTest()
        {
            //call method
            List<VideoElement> returnedVideo = new List<VideoElement>();
            //error - the class doesn't contain the definition for this method
            //returnedVideo = await new Models.VideoElement().GetVideoByIDAsync(1);


            List<VideoElement> expectedVideo = new List<VideoElement>();
            expectedVideo[0].ID = 1;
            expectedVideo[0].Title = "Star Wars: Episode IV – A New Hope";
            expectedVideo[0].Genre = "Sci-fi";
            expectedVideo[0].Plot = "Lorem ipsum 01";
            expectedVideo[0].Price =3 ;
            expectedVideo[0].Rating =7 ;            
            expectedVideo[0].Year = 1977 ;
            //expectedVideo[0].Poster = null;
            expectedVideo[0].Viewings = 3;

            //Assert.AreEqual(expectedVideo, returnedVideo);
        }

        // unit test code  
        [TestMethod]
        public async void GetVideoByGenreAsyncTest()
        {
            //call method
            List<VideoElement> returnedVideo = new List<VideoElement>();
            //error - the class doesn't contain the definition for this method
            //returnedVideo = await new Models.VideoElement().GetVideoByGenreAsync("Action");


            List<VideoElement> expectedVideo = new List<VideoElement>();
            expectedVideo[0].ID = 12;
            expectedVideo[0].Title = "Wonder Woman";
            expectedVideo[0].Genre = "Action";
            expectedVideo[0].Plot = "Lorem ipsum";
            expectedVideo[0].Price = 4;
            expectedVideo[0].Rating = 7;
            expectedVideo[0].Year = 2017;
            //expectedVideo[0].Poster = null;
            expectedVideo[0].Viewings = 23;

            //Assert.AreEqual(expectedVideo, returnedVideo);
        }
    }
}
