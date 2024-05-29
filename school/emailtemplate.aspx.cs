using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school
{
    public partial class emailtemplate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntemplatelist_Click(object sender, EventArgs e)
        {
            divtemplatelist.Visible = true;
            divcreatetemplate.Visible = false;
        }

        protected void btncreatetemplate_Click(object sender, EventArgs e)
        {
            divtemplatelist.Visible = false;
            divcreatetemplate.Visible = true;
        }
    }
}