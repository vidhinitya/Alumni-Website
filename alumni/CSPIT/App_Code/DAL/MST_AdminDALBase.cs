using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;
using MultiPlexTheater;
using MultiPlexTheater.ENT;
using MultiPlexTheater.DAL;
using System.Data.SqlClient;

namespace MultiPlexTheater.DAL
{
    public class MST_AdminDALBase
    {
        #region Constructor
        public MST_AdminDALBase()
        {
        }
        #endregion

        #region InsertOperation
        public Boolean Register(MST_AdminENT entMST_Admin, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);

                con.Open();
                string command;
                command = "INSERT INTO MST_Admin(AdminName, Pass,DepartmentId) " +
                        " Values('" + entMST_Admin.AdminName + "','"
                        + entMST_Admin.Pass + "','"
                        + entMST_Admin.DepartmentId + "')";
                SqlCommand cmd = new SqlCommand(command, con);
                cmd.ExecuteNonQuery();
                con.Close();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        #endregion
        
        #region UpdateOperation
        public Boolean Update(MST_AdminENT entMST_Admin, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;

                command = "Update MST_Admin Set " +
                "AdminName = '" + entMST_Admin.AdminName + "'," +
                "Pass = '" + entMST_Admin.Pass + "'," +
                "DepartmentId = '" + entMST_Admin.DepartmentId + "' Where AdminID= " + entMST_Admin.AdminID;

                SqlCommand cmd = new SqlCommand(command, con);
                cmd.ExecuteNonQuery();
                con.Close();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        #endregion

        #region DeleteOperation
        public Boolean Delete(Int32 AdminID, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "Delete From MST_Admin Where AdminID = " + AdminID;
                SqlCommand cmd = new SqlCommand(command, con);
                cmd.ExecuteNonQuery();
                con.Close();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        #endregion

        #region SelectPK Operation
        public MST_AdminENT SelectPK(Int32 AdminID, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "Select * from MST_Admin Where AdminID = " + AdminID;
                MST_AdminENT entMST_Admin = new MST_AdminENT();
                SqlDataAdapter da = new SqlDataAdapter(command, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                foreach (DataRow dr in dt.Rows)
                {
                    if (!dr["AdminID"].Equals(System.DBNull.Value))
                        entMST_Admin.AdminID = Convert.ToInt32(dr["AdminID"]);
                    if (!dr["AdminName"].Equals(System.DBNull.Value))
                        entMST_Admin.AdminName = Convert.ToString(dr["AdminName"]);
                    if (!dr["Pass"].Equals(System.DBNull.Value))
                        entMST_Admin.Pass = Convert.ToString(dr["Pass"]);
                    if (!dr["DepartmentId"].Equals(System.DBNull.Value))
                        entMST_Admin.DepartmentId = Convert.ToInt32(dr["DepartmentId"]);
                }
                return entMST_Admin;
            }
            catch (Exception lex)
            {
                return null;
            }
        }
        #endregion

        #region SelectAll Operation
        public DataTable SelectAll(String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "Select * from MST_Admin Order By AdminID Desc";
                SqlDataAdapter da = new SqlDataAdapter(command, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
               
                return dt;
                
            }
            catch (Exception lex)
            {
                return null;
            }
        }
        public DataTable GetServerDateTime(String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "select getdate()";
                SqlDataAdapter da = new SqlDataAdapter(command, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                return dt;

            }
            catch (Exception lex)
            {
                return null;
            }
        }
        #endregion

        #region SelectForComboBox
        public DataTable SelectForComboBox(String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "Select AdminID,AdminName,Pass,DepartmentId from MST_Admin order by AdminName";
                SqlDataAdapter da = new SqlDataAdapter(command, con);
                DataTable dtMST_Admin = new DataTable("dtMST_Admin_SelectALL");
                da.Fill(dtMST_Admin);
                return dtMST_Admin;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        #endregion
    }
}