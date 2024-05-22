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

namespace school
{
    public partial class branch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click1(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["SchoolConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();
            string insertQuery = "insert into Branch(BranchName,SchoolName,Email,MobileNumber,Currency,CurrencySymbol,City,State,Address)" +
                                              "values (@BranchName,@SchoolName,@Email,@MobileNumber,@Currency,@CurrencySymbol,@City,@State,@Address)";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.Parameters.AddWithValue("@BranchName",txtbranchname.Text);
            cmd.Parameters.AddWithValue("@SchoolName", txtschoolname.Text);
            cmd.Parameters.AddWithValue("@Email", txtemain.Text);
            cmd.Parameters.AddWithValue("@MobileNumber", txtmobileno.Text);
            cmd.Parameters.AddWithValue("@Currency", txtcurrency.Text);
            cmd.Parameters.AddWithValue("@CurrencySymbol", txtcurrencysymbol.Text);
            cmd.Parameters.AddWithValue("@City", txtcity.Text);
            cmd.Parameters.AddWithValue("@State", txtstate.Text);
                     
          cmd.Parameters.AddWithValue("@Address",txtaddress.Text);
             cmd.ExecuteNonQuery();
                        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "myalert", "alert('saved successfully');", true);
            conn.Close();

        }

        protected void btncreatebranch_Click(object sender, EventArgs e)
        {
            divlist.Visible = false;
            divcreate.Visible = true;
        }

        protected void btnbranchlist_Click(object sender, EventArgs e)
        {
            divlist.Visible = true;
            divcreate.Visible = false;
        }

        
    }
    }
