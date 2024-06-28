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

            string text = TextAreadescription.InnerText;

            SqlCommand cmd = new SqlCommand("insertdata_deposit", conn);
            cmd.Parameters.AddWithValue("@branch", ddlbranch.SelectedValue);
            cmd.Parameters.AddWithValue("@account", ddlaccount.SelectedValue);
            cmd.Parameters.AddWithValue("@voucherhead", ddlvoucherhead.SelectedValue);
            cmd.Parameters.AddWithValue("@ref", ddlref.SelectedValue);
            cmd.Parameters.AddWithValue("@amount", txtamount.Text);
            cmd.Parameters.AddWithValue("@deposit_date", txtdate.Text);
            cmd.Parameters.AddWithValue("@payvia", ddlpayvia.SelectedValue);
            cmd.Parameters.AddWithValue("@deposit_description", TextAreadescription.InnerText);
            
            cmd.CommandType = CommandType.StoredProcedure;
            int res = cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "myalert", "alert('saved successfully');", true);
        }
    }
}