using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HPMS
{
    public partial class DoctorAvailablity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.Connection con = new Models.Connection();
            Models.Appointment ap = new Models.Appointment();
            string doc_query = "select Did from Doctor where DoctorName = '" + DropDownList1.Text + "'";
            SqlCommand com = new SqlCommand(doc_query, con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            int did=0;
            while (rd.Read())
            {
                did = Convert.ToInt32(rd["Did"]);
            }
            ap.Did = did;
            ap.day = TextBox1.Text;
            ap.Time = TextBox2.Text;
            ap.Add(ap);
            Response.Write("<script>alert('Succssfully inserted')</script>");
        }
    }
}