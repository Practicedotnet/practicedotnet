using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school
{
    public partial class finesetup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnfinelist_Click(object sender, EventArgs e)
        {
            divfinelist.Visible = true;
            divcreatefine.Visible = false;

        }

        protected void btncreatefine_Click(object sender, EventArgs e)
        {
            divfinelist.Visible = false;
            divcreatefine.Visible = true;
        }
    }
}