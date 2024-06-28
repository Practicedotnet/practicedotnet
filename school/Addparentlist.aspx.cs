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
using System.Xml.Linq;

namespace school
{
    public partial class Addparentlist : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source = DESKTOP - I4MN1CM; Initial Catalog = School; Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvbind();
            }

        }

        protected void gvbind()
        {
            //SqlConnection conn = new SqlConnection("Data Source = DESKTOP - I4MN1CM; Initial Catalog = School; Integrated Security = True");
            //conn.Open();
            //SqlCommand cmd = new SqlCommand("Select * from Parent_T", conn);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //conn.Close();
            //if (ds.Tables[0].Rows.Count > 0)
            //{
            //    GridView1.DataSource = ds;
            //    GridView1.DataBind();
            //}
            //else
            //{
            //    ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            //    GridView1.DataSource = ds;
            //    GridView1.DataBind();
            //    int columncount = GridView1.Rows[0].Cells.Count;
            //    GridView1.Rows[0].Cells.Clear();
            //    GridView1.Rows[0].Cells.Add(new TableCell());
            //    GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
            //    GridView1.Rows[0].Cells[0].Text = "No Records Found";
            //}
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
             GridView1.EditIndex = e.NewEditIndex;
                gvbind();
            }
            protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
            {
             int ParentId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            //    Label lblID = (Label)row.FindControl("lblID");
            //    //TextBox txtname=(TextBox)gr.cell[].control[];  
            //    TextBox textName = (TextBox)row.Cells[0].Controls[0];
            //    TextBox textRelation = (TextBox)row.Cells[1].Controls[0];
            //    TextBox textFatherName = (TextBox)row.Cells[2].Controls[0];
            //TextBox textMother = (TextBox)row.Cells[3].Controls[0];
            //TextBox textOccupation = (TextBox)row.Cells[4].Controls[0];
            //TextBox textIncome = (TextBox)row.Cells[5].Controls[0];
            //TextBox textEducation = (TextBox)row.Cells[6].Controls[0];
            //TextBox textCity = (TextBox)row.Cells[7].Controls[0];
            //TextBox textState = (TextBox)row.Cells[8].Controls[0];
            //TextBox textMobile = (TextBox)row.Cells[7].Controls[0];
            //TextBox textEmail = (TextBox)row.Cells[8].Controls[0];
            //TextBox textProfilePic = (TextBox)row.Cells[9].Controls[0];
            //TextBox textAddress = (TextBox)row.Cells[10].Controls[0];
            //TextBox textFacebook = (TextBox)row.Cells[11].Controls[0];
            //TextBox textTwitter = (TextBox)row.Cells[12].Controls[0];
            //TextBox textLinkedIn = (TextBox)row.Cells[13].Controls[0];

            ////TextBox textadd = (TextBox)row.FindControl("txtadd");  
            ////TextBox textc = (TextBox)row.FindControl("txtc");  
            //GridView1.EditIndex = -1;
            //    conn.Open();
            //    SqlCommand cmd = new SqlCommand("update Parent_T set ParentId='" + textName.Text + "',Relation='" + textRelation.Text + "',FatherName='" + textFatherName.Text + "',Mother='" + textMother.Text + "',Occupation='" + textOccupation.Text + "',Income='" + textIncome.Text + "',Education='" + textEducation.Text + "',City='" + textCity.Text + "',State='" + textState.Text + "',Mobile='" + textMobile.Text + "',Email='" + textEmail.Text + "',ProfilePic='" + textProfilePic.Text + "',Address='" + textAddress.Text + "',Facebook='" + textFacebook.Text+"',Twitter='"+textTwitter.Text +"',LinkedIn='" + textLinkedIn.Text +"' where ParentId ='" + ParentId + "'", conn);
            //    cmd.ExecuteNonQuery();
            //    conn.Close();
            //    gvbind();
                //GridView1.DataBind();  
            }
            protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
            {
                GridView1.PageIndex = e.NewPageIndex;
                gvbind();
            }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["SchoolConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();
            string SelectQuery = "select * from Parent_T where Name like '%'+ @Name +'%'";
            SqlCommand cmd = new SqlCommand(SelectQuery, conn);
            cmd.Parameters.AddWithValue("@Name", txtSearch.Text);
            //cmd.Parameters.AddWithValue("@ParentId", txtSearch.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
    }
    

