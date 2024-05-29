using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school
{
    public partial class feesremainder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnremainderlist_Click(object sender, EventArgs e)
        {
            divremainderlist.Visible = true;
            divaddremainder.Visible = false;
        }

        protected void btnaddremainder_Click(object sender, EventArgs e)
        {
            divremainderlist.Visible = false;
            divaddremainder.Visible = true;
        }
    }
}