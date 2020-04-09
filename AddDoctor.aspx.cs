using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HPMS
{
    public partial class AddDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GetName();               
            }
        }
        Models.Category c = new Models.Category();
        private void GetName()
        {
            DropDownList1.Items.Clear();
            DropDownList1.Items.Insert(0, "--select a Category--");        
            foreach (var item in c.GetIds())  
            {
                DropDownList1.Items.Add(Convert.ToString(item));
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.Doctor d = new Models.Doctor();
            Models.Connection con = new Models.Connection();
            d.DoctorName = TextBox1.Text;
            string gender = "";
            if (RadioButton1.Checked)
            {
                gender = "Male";
            }
            else if (RadioButton2.Checked)
            {
                gender = "Female";
            }
            d.DoctorGender = gender;
            d.DoctorAge = TextBox2.Text;
            d.DoctorContact = TextBox3.Text;
            string query = "select Catid from DoctorCat where CatName = '" + DropDownList1.Text + "' ";
            SqlCommand com = new SqlCommand(query, con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                c.Cid = Convert.ToInt32(rd["Catid"]);
            }
            d.Catid = c.Cid;
            d.Add(d);
            Response.Write("<script>alert('successfully Entered')</script>");
        }
    }
}