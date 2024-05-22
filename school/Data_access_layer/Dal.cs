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
        public Dal()
        {
            strcon = ConfigurationManager.ConnectionStrings["SchoolConnectionString"].ConnectionString;
        }
        public void Addparent( string Name,string Relation,string Fathername,string Mother,string Occupation,string Income,string Education,string City,string State,string Mobile,string Email,string Address,string ProfilePic,string Facebook,string Twitter,string LinkedIn)
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
    }
}