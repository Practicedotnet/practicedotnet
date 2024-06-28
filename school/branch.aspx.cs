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
using System.Text.RegularExpressions;
using school.Data_access_layer;

namespace school
{
    public partial class branch : System.Web.UI.Page
    {
        Dal dal = new Dal();
        //private string SearchString = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                ShowData();
                //this.SearchBranch();
            }

        }

        private void ShowData()
        {
            throw new NotImplementedException();
        }

        //public string HighlightText(string InputTxt)
        //{
        //    string Search_Str = txtSearch.Text;
        //    // Setup the regular expression and add the Or operator.
        //    Regex RegExp = new Regex(Search_Str.Replace(" ", "|").Trim(), RegexOptions.IgnoreCase);
        //    // Highlight keywords by calling the
        //    //delegate each time a keyword is found.
        //    return RegExp.Replace(InputTxt, new MatchEvaluator(ReplaceKeyWords));
        //}

        //public string ReplaceKeyWords(Match m)
        //{
        //    return ("<span class=highlight>" + m.Value + "</span>");
        //}
        protected void btnSearch_Click(object sender, EventArgs e)

        {
            string strcon = ConfigurationManager.ConnectionStrings["SchoolConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();
            string SelectQuery = "select * from Branch where BranchName like '%'+ @BranchName +'%'";
            SqlCommand cmd = new SqlCommand(SelectQuery, conn);
            cmd.Parameters.AddWithValue("@BranchName", txtSearch.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }
        protected void btnClear_Click(object sender, ImageClickEventArgs e)
        {
            //  Simple clean up text to return the Gridview to it's default state
            txtSearch.Text = "";
            GridView1.DataBind();
        }
        protected void btnsave_Click1(object sender, EventArgs e)
        {
            //string strcon = ConfigurationManager.ConnectionStrings["SchoolConnectionString"].ConnectionString;
            //SqlConnection conn = new SqlConnection(strcon);
            //conn.Open();
            //string insertQuery = "insert into Branch(BranchName,SchoolName,Email,MobileNumber,Currency,CurrencySymbol,City,State,Address)" +
            //                                  "values (@BranchName,@SchoolName,@Email,@MobileNumber,@Currency,@CurrencySymbol,@City,@State,@Address)";
            //SqlCommand cmd = new SqlCommand(insertQuery, conn);
            //cmd.Parameters.AddWithValue("@BranchName", txtbranchname.Text);
            //cmd.Parameters.AddWithValue("@SchoolName", txtschoolname.Text);
            //cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            //cmd.Parameters.AddWithValue("@MobileNumber", txtmobileno.Text);
            //cmd.Parameters.AddWithValue("@Currency", txtcurrency.Text);
            //cmd.Parameters.AddWithValue("@CurrencySymbol", txtcurrencysymbol.Text);
            //cmd.Parameters.AddWithValue("@City", txtcity.Text);
            //cmd.Parameters.AddWithValue("@State", txtstate.Text);

            //cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
            //cmd.ExecuteNonQuery();
            dal.Branch(txtbranchname.Text, txtschoolname.Text, txtemail.Text, txtmobileno.Text, txtcurrency.Text, txtcurrencysymbol.Text, txtcity.Text, txtstate.Text, txtaddress.Text);
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "myalert", "alert('saved successfully');", true);
            

            clear();

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


        public void clear()
        {
            txtbranchname.Text = "";
            txtschoolname.Text = "";
            txtemail.Text = "";
            txtmobileno.Text = "";
            txtcurrency.Text = "";
            txtcurrencysymbol.Text = "";
            txtcity.Text = "";
            txtstate.Text = "";
            txtaddress.Text = "";


        }

        protected void ImgBExcel_Click(object sender, ImageClickEventArgs e)
        {
            Response.ClearContent();
            Response.AppendHeader("content-disposition", "attachment; filename=Employees.xls");
            Response.ContentType = "application/excel";
            StringWriter stringWriter = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(stringWriter);
            GridView1.HeaderRow.Style.Add("background-color", "#FFFFFF");
            GridView1.RenderControl(htw);
            Response.Write(stringWriter.ToString());
            Response.End();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            ShowData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox BranchName = GridView1.Rows[e.RowIndex].FindControl("txtbranchname") as TextBox;
            TextBox SchoolName = GridView1.Rows[e.RowIndex].FindControl("txtschoolname") as TextBox;
            TextBox Email = GridView1.Rows[e.RowIndex].FindControl("txtemail") as TextBox;
            TextBox MobileNumber = GridView1.Rows[e.RowIndex].FindControl("txtmobileno") as TextBox;
            TextBox Currency = GridView1.Rows[e.RowIndex].FindControl("txtcurrency") as TextBox;
            TextBox CurrencySymbol = GridView1.Rows[e.RowIndex].FindControl("txtcurrencysymbol") as TextBox;
            TextBox City =  GridView1.Rows[e.RowIndex].FindControl("txtcity") as TextBox;
            TextBox State = GridView1.Rows[e.RowIndex].FindControl("txtstate") as TextBox;
            string strcon = ConfigurationManager.ConnectionStrings["SchoolConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();
            //updating the record
            SqlCommand cmd = new SqlCommand("Update tbl_Employee set BranchName ='" + BranchName.Text + "',SchoolName='" + txtschoolname.Text + "' ,Email='" + txtemail.Text + "',MobileNumber='" + txtmobileno.Text + "',Currency='" + txtcurrency.Text + "',  CurrencySymbol='" + txtcurrencysymbol.Text + "' ,City='" + txtcity.Text + "',State='" + txtstate.Text + "' where Branchid=" + Convert.ToInt32(txtBranchid.Text), conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview
            GridView1.EditIndex = -1;
            //Call ShowData method for displaying updated data
            ShowData();
        }
    }
}

       
        






