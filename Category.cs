using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HPMS.Models
{
    public class Category : ICurd<Category>
    {
        public int Cid { get; set; }
        public string CatName { get; set; }

        public void Add(Category s)
        {
            Connection gcon = new Connection();
            gcon.ExecuteQuery("insert into DoctorCat values ('" + s.CatName + "')");
        }

        public void Delete(Category s)
        {
            throw new NotImplementedException();
        }

        public List<string> GetIds()
        {
            Models.Connection con = new Connection();
            List<string> a = new List<string>();
            string query = "select CatName from DoctorCat";
            SqlCommand com = new SqlCommand(query, con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {               
                CatName = rd["CatName"].ToString();
                a.Add(CatName);
                CatName = "";
            }
            rd.Close();
            return a;
        }

        public Category Search(Category s)
        {
            throw new NotImplementedException();
        }

        public void Update(Category s)
        {
            throw new NotImplementedException();
        }

        List<Category> ICurd<Category>.GetIds()
        {
            throw new NotImplementedException();
        }
    }
}