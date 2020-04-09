using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HPMS.Models
{
    public partial class AddStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.Connection con = new Connection();
            Models.Staff st = new Staff();
            st.SName = TextBox1.Text;
            st.SAge = TextBox2.Text;
            string gender = "";
            if (RadioButton1.Checked)
            {
                gender = "Male";
            }
            else if (RadioButton2.Checked)
            {
                gender = "Female";
            }
            st.SGender = gender;
            st.SContact = TextBox3.Text;
            st.SCnic = TextBox4.Text;
            st.SJob = TextBox5.Text;
            st.Add(st);
            Response.Write("<script>alert('successfully Entered')</script>");
        }
    }
}