using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HPMS.Models
{
    public class Doctor : ICurd<Doctor>
    {
        public int Did { get; set; }
        public string DoctorName { get; set; }
        public string DoctorContact { get; set; }
        public string DoctorAge { get; set; }
        public string DoctorGender { get; set; }
        public int Catid { get; set; } 
        
        public void Add(Doctor s)
        {
            Connection gcon = new Connection();
            gcon.ExecuteQuery("insert into Doctor values ('" + s.DoctorName + "','" + s.DoctorContact + "','" + s.DoctorAge + "','" + s.DoctorGender + "','" + s.Catid + "')");
        }

        public void Delete(Doctor s)
        {
            throw new NotImplementedException();
        }

        public List<string> GetIds()
        {
            Models.Connection con = new Connection();
            List<string> a = new List<string>();
            string query = "select DoctorName from Doctor";
            SqlCommand com = new SqlCommand(query, con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                DoctorName = rd["CatName"].ToString();
                a.Add(DoctorName);
                DoctorName = "";
            }
            rd.Close();
            return a;
        }

        public Doctor Search(Doctor s)
        {
            throw new NotImplementedException();
        }

        public void Update(Doctor s)
        {
            throw new NotImplementedException();
        }

        List<Doctor> ICurd<Doctor>.GetIds()
        {
            throw new NotImplementedException();
        }
    }
}