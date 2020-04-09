using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HPMS
{
    public partial class AddPatient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (!IsPostBack)
            {
                GetName();
              //  Getdoc();
                //Getdocdate();
            }
            DropDownList2.Items.Insert(0, "--select a Doctor--");
            DropDownList3.Items.Insert(0, "--select a Day--");
            DropDownList4.Items.Insert(0, "--select a Time--");
        }

        Models.Patient p = new Models.Patient();
        Models.Category c = new Models.Category();
        private void GetName()
        {
            DropDownList1.Items.Clear();
            DropDownList1.Items.Insert(0, "--select a Category--");
            foreach (var item in c.GetIds())  //p.GetIds()
            {
                DropDownList1.Items.Add(Convert.ToString(item));
            }
        }
        public void Getdoc()
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Insert(0, "--select a Doctor--");
            foreach (var item in GetDoctor())
            {
                DropDownList2.Items.Add(Convert.ToString(item));
            }
        }
        public void Getdocdate()
        {
            DropDownList3.Items.Clear();
            DropDownList3.Items.Insert(0, "--select a Day--");
            foreach (var item in GetDate())
            {
                DropDownList3.Items.Add(Convert.ToString(item));
            }
        }
        public void Getdoctimes()
        {
            DropDownList4.Items.Clear();
            DropDownList4.Items.Insert(0, "--select a Time--");
            foreach (var item in GetTIme())
            {
                DropDownList4.Items.Add(Convert.ToString(item));
            }
        }
        public List<string> GetDoctor()
        {
            int catid;
            string docname="";
            List<string> a = new List<string>();
            Models.Connection con = new Models.Connection();
            string query1 = "select * from DoctorCat where CatName = '" + DropDownList1.Text + "'";
            SqlCommand com1 = new SqlCommand(query1, con.getConnection());
            SqlDataReader rd1 = com1.ExecuteReader();
            while (rd1.Read())
            {
                catid = Convert.ToInt32(rd1["Catid"]);
                string query = "select DoctorName from Doctor where Catid = '"+catid+"'";
                SqlCommand com = new SqlCommand(query, con.getConnection());
                SqlDataReader rd = com.ExecuteReader();
                while (rd.Read())
                {
                  
                    docname = rd["DoctorName"].ToString();
                    a.Add(docname);
                }
                rd.Close();
            }           
          
           
            return a;
        }
        public List<string> GetDate()
        {
            int Did;
            string date = "";
            List<string> a = new List<string>();
            Models.Connection con = new Models.Connection();
            string query1 = "select * from Doctor where DoctorName = '" + DropDownList2.Text + "'";
            SqlCommand com1 = new SqlCommand(query1, con.getConnection());
            SqlDataReader rd1 = com1.ExecuteReader();
            while (rd1.Read())
            {
                Did = Convert.ToInt32(rd1["Did"]);
                string query = "select Adate from Appointment where Did = '" + Did + "'";
                SqlCommand com = new SqlCommand(query, con.getConnection());
                SqlDataReader rd = com.ExecuteReader();
                while (rd.Read())
                {
                  
                    date = rd["Adate"].ToString();
                    a.Add(date);
                }
                rd.Close();
            }


            return a;
        }
        Models.Connection con = new Models.Connection();
        public List<string> GetTIme()
        {
            int Did;
            string time = "";
            List<string> a = new List<string>();            
            string query1 = "select * from Doctor where DoctorName = '" + DropDownList2.Text + "'";
            SqlCommand com1 = new SqlCommand(query1, con.getConnection());
            SqlDataReader rd1 = com1.ExecuteReader();
            while (rd1.Read())
            {
                Did = Convert.ToInt32(rd1["Did"]);
                string query = "select Atime from Appointment where Did = '" + Did + "' AND Adate = '"+DropDownList3.Text+"' ";
                SqlCommand com = new SqlCommand(query, con.getConnection());
                SqlDataReader rd = com.ExecuteReader();
                while (rd.Read())
                {
                    time = rd["Atime"].ToString();
                    a.Add(time);
                }
                rd.Close();
            }


            return a;
        }
        int uid;
        int did;
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Models.Patient p = new Models.Patient();
            string email = Session["userinfo"].ToString();
            string query = "select * from Userinfo where Email = '"+email+"' ";
            SqlCommand com = new SqlCommand(query, con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
              uid = Convert.ToInt32(rd["Uid"]);                
            }
            p.PName = TextBox1.Text;
            p.PAge = TextBox2.Text;
            string gender = "";
            if (RadioButton1.Checked)
            {
                gender = "Male";
            }
            else if(RadioButton2.Checked)
            {
                gender = "Female";
            }
            p.PGender = gender;
            p.PContact = TextBox3.Text;
            p.PCnic = TextBox4.Text;
            p.PReason = TextBox5.Text;
            p.Uid = uid;
            
            string query1 = "select * from Doctor where DoctorName = '" + DropDownList2.Text + "'";
            SqlCommand com1 = new SqlCommand(query1, con.getConnection());
            SqlDataReader rd1 = com1.ExecuteReader();
            while (rd1.Read())
            {
                did = Convert.ToInt32(rd1["Did"]);
            }
            p.Did = did;
            p.apdate = DropDownList3.Text;
            p.aptime = DropDownList4.Text;
            p.datetime = DateTime.Now;
            p.Add(p);
            Response.Write("<script>alert('successfully Entered')</script>");
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            Getdoctimes();
        }     
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Getdoc();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Getdocdate();
        }
    }
}