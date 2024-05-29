using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school
{
    public partial class bulk_sms_mail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsms_Click(object sender, EventArgs e)
        {
            divsms.Visible = true;
            divemail.Visible = false;
        }

        protected void btnemail_Click(object sender, EventArgs e)
        {
            divsms.Visible = false;
            divemail.Visible = true;
        }
    }
}