using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HPMS.Models
{
    public class Appointment :ICurd<Appointment>
    {
        public int Aid { get; set; }
        public string Time { get; set; }
        public string day { get; set; }
        public int Did { get; set; }
        Connection gcon = new Connection();
        public void Add(Appointment s)
        {                            
                gcon.ExecuteQuery("insert into Appointment values ('" + s.Time + "','" + s.day + "','" + s.Did + "')");            
        }

        public void Delete(Appointment s)
        {
            throw new NotImplementedException();
        }

        public List<Appointment> GetIds()
        {
            throw new NotImplementedException();
        }

        public Appointment Search(Appointment s)
        {
            throw new NotImplementedException();
        }

        public void Update(Appointment s)
        {
            throw new NotImplementedException();
        }
    }
}