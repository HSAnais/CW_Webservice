using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PpVoD_SH_UI.Models
{
    public class UserAccount
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public DateTime LastLogin { get; set; }
    }
}