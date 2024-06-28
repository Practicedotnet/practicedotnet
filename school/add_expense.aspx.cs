using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school
{
    public partial class add_expense : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnexpenselist_Click(object sender, EventArgs e)
        {
            divexpenselist.Visible = true;
            divaddexpense.Visible = false;
        }

        protected void btnaddexpense_Click(object sender, EventArgs e)
        {
            divexpenselist.Visible = false;
            divaddexpense.Visible = true;
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["SchoolConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();

            string text = TextAreadescription.InnerText;

            SqlCommand cmd = new SqlCommand("insertdata_expense", conn);
            cmd.Parameters.AddWithValue("@branch", ddlbranch.SelectedValue);
            cmd.Parameters.AddWithValue("@account", ddlaccount.SelectedValue);
            cmd.Parameters.AddWithValue("@voucherhead", ddlvoucherhead.SelectedValue);
            cmd.Parameters.AddWithValue("@ref", ddlref.SelectedValue);
            cmd.Parameters.AddWithValue("@amount", txtamount.Text);
            cmd.Parameters.AddWithValue("@date_expense", txtdate.Text);
            cmd.Parameters.AddWithValue("@payvia", ddlpayvia.SelectedValue);
            cmd.Parameters.AddWithValue("@description_expense", TextAreadescription.InnerText);

            cmd.CommandType = CommandType.StoredProcedure;
            int res = cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "myalert", "alert('saved successfully');", true);
        }
    }
}