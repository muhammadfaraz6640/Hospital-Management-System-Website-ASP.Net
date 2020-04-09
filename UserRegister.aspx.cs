using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HPMS
{
    public partial class UserRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.UserReg user = new Models.UserReg();
            user.UName = TextBox1.Text;
            user.Email = TextBox2.Text;
            user.Pass = TextBox3.Text;
            user.signUp(user);
            Response.Write("<script>alert('successfully registered')</script>");
        }
    }
}