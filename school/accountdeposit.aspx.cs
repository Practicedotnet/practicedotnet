using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using school.Data_access_layer;
namespace school
{
    public partial class accountdeposit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btndepositlist_Click(object sender, EventArgs e)
        {
            divdepositlist.Visible = true;
            divcreatedeposit.Visible = false;
        }

        protected void btncreatedeposit_Click(object sender, EventArgs e)
        {
            divdepositlist.Visible = false;
            divcreatedeposit.Visible = true;

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["SchoolConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();

            string text = TxtDescription.InnerText;

            SqlCommand cmd = new SqlCommand("insertdata", conn);
            cmd.Parameters.AddWithValue("@branch", ddlbranch.SelectedValue);
            cmd.Parameters.AddWithValue("@voucherhead", .Text);
            cmd.Parameters.AddWithValue("@account_number", txtaccountnumber.Text);
            cmd.Parameters.AddWithValue("@desciption", TxtDescription.InnerText);
            cmd.Parameters.AddWithValue("@opening_balance ", txtopeningbalance.Text);
            cmd.CommandType = CommandType.StoredProcedure;
            int res = cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "myalert", "alert('saved successfully');", true);
        }
    }
}