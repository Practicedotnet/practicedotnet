using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school
{
    public partial class feesgroup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnfeegrouplist_Click(object sender, EventArgs e)
        {
            divfeesgrouplist.Visible = true;
            divcreatefeesgroup.Visible = false;
        }

        protected void btncreatefeesgroup_Click(object sender, EventArgs e)
        {
            divfeesgrouplist.Visible = false;
            divcreatefeesgroup.Visible = true;
        }
    }
}