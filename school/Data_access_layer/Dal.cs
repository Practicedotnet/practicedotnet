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

namespace school.Data_access_layer
{
    public class Dal
    {
        string strcon;
        //Connection _conn = new Connection();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        //SqlConnection _ConSch;
        public Dal()
        {
            strcon = ConfigurationManager.ConnectionStrings["SchoolConnectionString"].ConnectionString;
        }
        public void ClearDataTable()
        {
            if (dt != null)
            {
                if (dt.Rows.Count > 0)
                {
                    dt.Rows.Clear();
                    dt.Columns.Clear();
                    dt.Clear();
                }
            }
        }
        public void Addparent(string Name, string Relation, string Fathername, string Mother, string Occupation, string Income, string Education, string City, string State, string Mobile, string Email, string Address, string ProfilePic, string Facebook, string Twitter, string LinkedIn)
        {

            ////string strcon = ConfigurationManager.ConnectionStrings["SchoolConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();
            string insertQuery = "insert into Parent_T(Name,Relation,FatherName ,Mother ,Occupation ,Income ,Education ,City ,State ,Mobile ,Email ,Address ,ProfilePic,Facebook,Twitter,LinkedIn)" +
                                              "values (@Name,@Relation,@FatherName,@Mother,@Occupation,@Income,@Education,@City,@State,@Mobile,@Email,@Address,@ProfilePic,@Facebook,@Twitter,@LinkedIn)";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.Parameters.AddWithValue("@Name", Name);
            cmd.Parameters.AddWithValue("@Relation", Relation);
            cmd.Parameters.AddWithValue("@FatherName", Fathername);
            cmd.Parameters.AddWithValue("@Mother", Mother);
            cmd.Parameters.AddWithValue("@Occupation", Occupation);
            cmd.Parameters.AddWithValue("@Income", Income);
            cmd.Parameters.AddWithValue("@Education", Education);
            cmd.Parameters.AddWithValue("@City", City);
            cmd.Parameters.AddWithValue("@State", State);
            cmd.Parameters.AddWithValue("@Mobile", Mobile);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Address", Address);
            cmd.Parameters.AddWithValue("@ProfilePic", ProfilePic);
            cmd.Parameters.AddWithValue("@Facebook", Facebook);
            cmd.Parameters.AddWithValue("@Twitter", Twitter);
            cmd.Parameters.AddWithValue("@LinkedIn", LinkedIn);
            cmd.ExecuteNonQuery();

        }
        public void Branch(string BranchName, string SchoolName, string Email, string MobileNumber, string Currency, string CurrencySymbol, string City, string State, string Address)
        {
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();
            string insertQuery = "insert into Branch(BranchName,SchoolName,Email,MobileNumber,Currency,CurrencySymbol,City,State,Address)" +
                                              "values (@BranchName,@SchoolName,@Email,@MobileNumber,@Currency,@CurrencySymbol,@City,@State,@Address)";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.Parameters.AddWithValue("@BranchName", BranchName);
            cmd.Parameters.AddWithValue("@SchoolName", SchoolName);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@MobileNumber", MobileNumber);
            cmd.Parameters.AddWithValue("@Currency", Currency);
            cmd.Parameters.AddWithValue("@CurrencySymbol", CurrencySymbol);
            cmd.Parameters.AddWithValue("@City", City);
            cmd.Parameters.AddWithValue("@State", State);
            cmd.Parameters.AddWithValue("@Address", Address);
            cmd.ExecuteNonQuery();
        }

        //public DataTable Fun_CreateAdmission(string RecId, string Username, string Password, string ConfirmPassword, string Address, string MobileNo, string EmailId, Nullable<DateTime> CreatedOn, string CreatedBy, string Status, int RoleId, string Tran)

        //{
        //    ClearDataTable();
        //    da = new SqlDataAdapter("Exec CustRegistration_P '" + RecId + "','" + Username + "','" + Password + "','" + ConfirmPassword + "','" + Address + "','" + MobileNo + "','" + EmailId + "','" + CreatedOn + "','" + CreatedBy + "','" + Status + "','" + RoleId + "','" + Tran + "'", strcon);
        //    da.SelectCommand.CommandTimeout = 300;
        //    ds.Clear();
        //    da.Fill(ds, "Register");
        //    dt = ds.Tables["Register"];
        //    return dt;
        //}
        public DataTable Fun_createsubject(string Subjectid, string Branch, string SubjectName, string SubjectCode, string SubjectAuthor, string SubjectType,  string Trans)

        {
            ClearDataTable();
            da = new SqlDataAdapter("Exec Subject_P '" + Subjectid + "','" + Branch + "','" + SubjectName + "','" + SubjectCode + "','" + SubjectAuthor + "','" + SubjectType + "','" + Trans + "'", strcon);
            da.SelectCommand.CommandTimeout = 300;
            ds.Clear();
            da.Fill(ds, "Subject");
            dt = ds.Tables["Subject"];
            return dt;

        }





}

}
