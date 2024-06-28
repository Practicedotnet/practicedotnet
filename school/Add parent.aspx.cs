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
    public partial class Add_parent : System.Web.UI.Page
    {
        Dal dal = new Dal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBranch();
            }
        }
        private void BindBranch()
        {
            string strcon = ConfigurationManager.ConnectionStrings["SchoolConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();

            SqlCommand cmd = new SqlCommand("SELECT Branchid, BranchName FROM Branch", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownListbranch.DataSource = ds;
            DropDownListbranch.DataTextField = "BranchName";
            DropDownListbranch.DataValueField = "Branchid";
            DropDownListbranch.DataBind();
            DropDownListbranch.Items.Insert(0, new ListItem("--Select--", "0"));
            conn.Close();

        }

        protected void btnsave_Click(object sender, EventArgs e)

        {
            string ImageName = Path.GetFileName(Fuimage.FileName);
            // Line added
            Fuimage.SaveAs(Server.MapPath("images/" + Fuimage.FileName));
            ////string strcon = ConfigurationManager.ConnectionStrings["SchoolConnectionString"].ConnectionString;
            ////SqlConnection conn = new SqlConnection(strcon);
            ////conn.Open();
            ////string insertQuery = "insert into Parent_T(Name,Relation,FatherName ,Mother ,Occupation ,Income ,Education ,City ,State ,Mobile ,Email ,Address ,ProfilePic,Facebook,Twitter,LinkedIn)" +
            ////                                  "values (@Name,@Relation,@FatherName,@Mother,@Occupation,@Income,@Education,@City,@State,@Mobile,@Email,@Address,@ProfilePic,@Facebook,@Twitter,@LinkedIn)";
            ////SqlCommand cmd = new SqlCommand(insertQuery, conn);
            ////cmd.Parameters.AddWithValue("@Name", txtname.Text);
            ////cmd.Parameters.AddWithValue("@Relation", txtrelation.Text);
            ////cmd.Parameters.AddWithValue("@FatherName", txtfathername.Text);
            ////cmd.Parameters.AddWithValue("@Mother", txtmothername.Text);
            ////cmd.Parameters.AddWithValue("@Occupation", txtoccupation.Text);
            ////cmd.Parameters.AddWithValue("@Income", txtincome.Text);
            ////cmd.Parameters.AddWithValue("@Education", txteducation.Text);
            ////cmd.Parameters.AddWithValue("@City", txtcity.Text);
            ////cmd.Parameters.AddWithValue("@State", txtstate.Text);
            ////cmd.Parameters.AddWithValue("@Mobile", txtmobile.Text);
            ////cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            ////cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
            ////cmd.Parameters.AddWithValue("@ProfilePic", ImageName);
            ////cmd.Parameters.AddWithValue("@Facebook", txtfacebook.Text);
            ////cmd.Parameters.AddWithValue("@Twitter", txttwitter.Text);
            ////cmd.Parameters.AddWithValue("@LinkedIn", txtlinkedin.Text);
            ////cmd.ExecuteNonQuery();
            dal.Addparent(txtname.Text, txtrelation.Text, txtfathername.Text, txtmothername.Text,txtoccupation.Text, txtincome.Text, txteducation.Text, txtcity.Text, txtstate.Text, txtmobile.Text, txtemail.Text, txtaddress.Text, ImageName,txtfacebook.Text,txttwitter.Text,txtlinkedin.Text);

            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "myalert", "alert('saved successfully');", true);
            ////conn.Close();
 
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Add parent.aspx");
        }

    }
}