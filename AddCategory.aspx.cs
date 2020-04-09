using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HPMS
{
    public partial class ddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.Category cat = new Models.Category();
            cat.CatName = TextBox1.Text;
            cat.Add(cat);
            Response.Write("<script>alert('Succssfully inserted')</script>");
        }
    }
}