using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HPMS.Models
{
    public class Staff : ICurd<Staff>
    {        
        public int Sid { get; set; }
        public string SName { get; set; }
        public string SAge { get; set; }
        public string SJob { get; set; }
        public string SGender { get; set; }
        public string SContact { get; set; }
        public string SCnic { get; set; }        
        public void Add(Staff s)
        {
            Connection gcon = new Connection();
            gcon.ExecuteQuery("insert into Staff values ('" + s.SName + "','" + s.SAge + "','" + s.SJob + "','" + s.SGender + "','" + s.SContact + "','" + s.SCnic + "')");
        }

        public void Delete(Staff s)
        {
            throw new NotImplementedException();
        }

        public List<string> GetIds()
        {
            Models.Connection con = new Connection();
            List<string> a = new List<string>();
            string query = "select SName from Staff";
            SqlCommand com = new SqlCommand(query, con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                SName = rd["SName"].ToString();
                a.Add(SName);
                SName = "";
            }
            rd.Close();
            return a;
        }

        public Staff Search(Staff s)
        {
            throw new NotImplementedException();
        }

        public void Update(Staff s)
        {
            throw new NotImplementedException();
        }

        List<Staff> ICurd<Staff>.GetIds()
        {
            throw new NotImplementedException();
        }
    }
}