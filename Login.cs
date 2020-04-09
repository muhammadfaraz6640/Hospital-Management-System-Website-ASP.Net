using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HPMS.Models
{
    public class Login
    {
        public string Email { get; set; }
        public string Password { get; set; }
        public string role { get; set; }

        public bool cond = false;      
        public Connection connection = new Connection();
        public void GetLogin(Login lo)
        {            
            connection.getConnection();
            SqlCommand com = new SqlCommand("Select * from Userinfo where Email ='" + lo.Email + "' and Password = '" + lo.Password + "'",connection.con);
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                string Email = rd["email"].ToString();
                string Password = rd["password"].ToString();
                if (Email == lo.Email && Password == lo.Password)
                {
                    cond = true;
                    lo.role = rd["role"].ToString();
                }
            }
        }
    }
}