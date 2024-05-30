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
    public partial class officeaccount : System.Web.UI.Page
    {
        public object TextArea1 { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnaccountlist_Click(object sender, EventArgs e)
        {
            divaccountlist.Visible = true;
            divcreateaccount.Visible = false;
        }

        protected void btncreateaccont_Click(object sender, EventArgs e)
        {
            divaccountlist.Visible = false;
            divcreateaccount.Visible = true;
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["SchoolConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();

            string text = TxtDescription.InnerText;
            
            SqlCommand cmd = new SqlCommand("insertdata", conn);
            cmd.Parameters.AddWithValue("@branch", ddlbranch.SelectedValue);
            cmd.Parameters.AddWithValue("@account_name", txtaccountname.Text);
            cmd.Parameters.AddWithValue("@account_number", txtaccountnumber.Text);
            cmd.Parameters.AddWithValue("@desciption", TxtDescription.InnerText);
            cmd.Parameters.AddWithValue("@opening_balance ", txtopeningbalance.Text);
            cmd.CommandType = CommandType.StoredProcedure;
            int res = cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "myalert", "alert('saved successfully');", true);

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}