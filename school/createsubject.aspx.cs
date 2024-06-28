using school.Data_access_layer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace school
{
    public partial class createsubject : System.Web.UI.Page
    {
        //    SubjectClasses Subj = new RegiClasss();
        //    Dal dal = new Dal();
        //    DataTable dt = new DataTable();
        //    string msg = null;
        //    string Msg, org;
        //    protected void Page_Load(object sender, EventArgs e)
        //    {

        //    }

        //    protected void btnsubjectlist_Click(object sender, EventArgs e)
        //    {

        //        divlist.Visible = true;
        //        divcreate.Visible = false;

        //    }

        //    protected void btncreatesubject_Click(object sender, EventArgs e)
        //    {
        //        divlist.Visible = false;
        //        divcreate.Visible = true;

        //    }

        //    protected void btnsave_Click(object sender, EventArgs e)
        //    {
        //        if (DDL1.Text == "Select")
        //        {
        //            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "myalert", "alert('Select Branch');", true);
        //            return;
        //        }
        //        else if (txtsubjectname.Text == "")
        //        {
        //            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "myalert", "alert('Enter SubjectName');", true);
        //            return;
        //        }
        //        else if (txtsubjectcode.Text == "")
        //        {
        //            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "myalert", "alert('Enter Subjectcode ');", true);
        //            return;
        //        }
        //        else if (txtsubjectauthor.Text == "")
        //        {
        //            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "myalert", "alert('Entersubjectauthor');", true);
        //            return;
        //        }
        //        else if (DDL2.Text == "Select")
        //        {
        //            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "myalert", "alert('Select  SubjectType');", true);
        //            return;
        //        }

        //        dt = Regi.Fun_createsubject(DDL1.SelectedValue, txtsubjectname.Text, txtsubjectcode.Text, txtsubjectauthor.Text, DDL2.SelectedValue,  "Insert");

        //    }

    }
}