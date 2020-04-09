using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HPMS.Models
{
    public class UserReg
    {
        public string Uid { get; set; }
        public string UName { get; set; }
        public string Email { get; set; }
        public string Pass { get; set; }        
        public string role = "User";

        public void signUp(UserReg a)
        {
            Connection gcon = new Connection();           
            gcon.ExecuteQuery("insert into Userinfo values ('" + a.UName + "','" + a.Email + "','" + a.Pass + "','" + a.role + "')");            
        }
    }
}