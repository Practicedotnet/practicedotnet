using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school
{
    public partial class createsubject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubjectlist_Click(object sender, EventArgs e)
        {

            divlist.Visible = true;
            divcreate.Visible = false;

        }

        protected void btncreatesubject_Click(object sender, EventArgs e)
        {
            divlist.Visible = false;
            divcreate.Visible = true;

        }
    }
}