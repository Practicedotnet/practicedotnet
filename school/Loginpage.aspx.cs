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
    public partial class Loginpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-I4MN1CM;Initial Catalog=School;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from LoginUser where UserName=@UserName and Password=@Password", conn);
            cmd.Parameters.AddWithValue("@UserName", TxtUname.Text);
            cmd.Parameters.AddWithValue("@Password", Txtpassword.Text);
            SqlDataAdapter sda = new SqlDataAdapter (cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            if (dt.Rows.Count > 0)
            {
                Session["id"] = TxtUname.Text;
                Response.Redirect("Dashboard.aspx");
                Session.RemoveAll();
            }
            //else
            //{
            //    Label1.Text = "You're username and word is incorrect";
            //    Label1.ForeColor = System.Drawing.Color.Red;

            //}
            //if (dt.Rows.Count > 0)
            //{
            //    Response.Redirect("Dashboard.aspx");
            //}


        }




        }


    }
