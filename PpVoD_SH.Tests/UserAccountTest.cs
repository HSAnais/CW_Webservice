using System;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using PpVoD_SH_UI.Models;
namespace PpVoD_SH.Tests
{
    [TestClass]
    public class UserAccountTest
    {
        // unit test code  
        [TestMethod]
        public async void GetLoginAsyncTest()
        {
            // hardcoded data  
            string testemail = "admin@admin.admin";
            string testpassword = "admin";

            //call method
            bool okLogged = await new UserAccount().GetLoginAsync(testemail, testpassword);

            // assert  
            bool expected = true;
            Assert.AreEqual(expected, okLogged);
        }

        // unit test code  
        [TestMethod]
        public async void GetRentHistoryAsyncTest()
        {
            // hardcoded data  
            string testemail = "admin@admin.admin";

            //call method - returns error no definition of method in UserAccount
            //string testRentHistory = await new Models.UserAccount().GetRentHistoryAsync(testemail);

            // assert  
            string expectedTest = "2,4,8,16,5";
            //Assert.AreEqual(expectedTest, testRentHistory);
        }

        // unit test code  
        [TestMethod]
        public async void GetUserByEmailAsyncTest()
        {
            // hardcoded data  
            string testemail = "admin@admin.admin";

            //call method - returns error no definition of method in UserAccount
            //List<Models.UserAccount> returnedUser = await new Models.UserAccount().GetUserByEmailAsync(testemail);


            DateTime testDateTime = new DateTime(2018, 01, 01, 0, 0, 0);

            List<UserAccount> expectedUser = new List<UserAccount>();
            expectedUser[0].ID = 1;
            expectedUser[0].Name = "Admin";
            expectedUser[0].Email = "admin@admin.admin";
            expectedUser[0].Password = "admin";
            expectedUser[0].LastLogin = testDateTime;
            expectedUser[0].RentHistory = "2,4,8,16,5";
            expectedUser[0].Credits = 10;
            expectedUser[0].Creditcard = "xxxx xxxx xxxx xxxx";

            //Assert.AreEqual(expectedUser, returnedUser);
        }
    }
}