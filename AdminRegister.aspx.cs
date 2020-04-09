using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HPMS
{
    public partial class AdminRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.AdminReg admin = new Models.AdminReg();
            admin.Name = TextBox1.Text;
            admin.Email = TextBox2.Text;
            admin.Password = TextBox3.Text;
            admin.signUp(admin);
            Response.Write("<script>alert('successfully registered')</script>");
        }
    }
}