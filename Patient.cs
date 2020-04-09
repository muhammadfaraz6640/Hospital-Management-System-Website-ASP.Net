using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HPMS.Models
{
    public class Patient : ICurd<Patient>
    {
        public int Pid { get; set; }
        public string PName { get; set; }
        public string PAge { get; set; }
        public string PReason { get; set; }
        public string PGender { get; set; }
        public string PContact { get; set; }
        public string PCnic { get; set; }
        public int Uid { get; set; }
        public int Did { get; set; }
        public string date { get; set; }
        public string time { get; set; }
        public string dcat { get; set; }
        public string apdate { get; set; }
        public string aptime { get; set; }
        public DateTime datetime { get; set; }
        public void Add(Patient s)
        {
            Connection gcon = new Connection();
            gcon.ExecuteQuery("insert into Patient values ('" + s.PName + "','" + s.PAge + "','" + s.PReason + "','" + s.PGender + "','" + s.PContact + "','" + s.PCnic + "','" + s.Did + "','" + s.Uid + "','" + s.datetime + "','" + s.aptime + "','" + s.apdate + "')");
        }

        public void Delete(Patient s)
        {
            throw new NotImplementedException();
        }

        public List<Patient> GetIds()
        {
            throw new NotImplementedException();
        }

        public Patient Search(Patient s)
        {
            throw new NotImplementedException();
        }

        public void Update(Patient s)
        {
            throw new NotImplementedException();
        }
    }
}