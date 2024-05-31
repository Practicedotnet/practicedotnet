using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school
{
    public partial class School : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImgbtnLogout_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Loginpage.aspx");
           
        }
    }
}