using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HPMS.Models
{
    public class AdminReg
    {
        public string Aid { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }

        public string role = "Admin";

        public void signUp(AdminReg a)
        {
            Connection gcon = new Connection();            
            gcon.ExecuteQuery("insert into Userinfo values ('" + a.Name + "','" + a.Email + "','" + a.Password + "','" + a.role + "')");            
        }
    }
}