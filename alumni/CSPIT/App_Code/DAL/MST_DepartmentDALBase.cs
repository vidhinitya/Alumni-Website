using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using MultiPlexTheater;
using MultiPlexTheater.ENT;
using System.Data.OleDb;
using System.Data.SqlClient;
namespace MultiPlexTheater.DAL
{
    public class MST_DepartmentDALBase
    {
        #region Constructor
        public MST_DepartmentDALBase()
        {

        }
        #endregion

        #region InsertOperation
        public Boolean Insert(MST_DepartmentENT entMST_Department, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);

                con.Open();
                string command;
                command = "INSERT INTO MST_Department(DepartmentName) " +
                        " Values('" + entMST_Department.DepartmentName + "')";

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
        public Boolean Update(MST_DepartmentENT entMST_Department, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "Update MST_Department Set " +
                        "DepartmentName = '" + entMST_Department.DepartmentName + "' Where DepartmentID= " + entMST_Department.DepartmentID;

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
        public Boolean Delete(Int32 DepartmentID, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "Delete From MST_Department Where DepartmentID = " + DepartmentID;
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
        public MST_DepartmentENT SelectPK(Int32 DepartmentID, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "Select * from MST_Department Where DepartmentID = " + DepartmentID;
                MST_DepartmentENT entMST_Department = new MST_DepartmentENT();
                SqlDataAdapter da = new SqlDataAdapter(command, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                foreach (DataRow dr in dt.Rows)
                {
                    if (!dr["DepartmentID"].Equals(System.DBNull.Value))
                        entMST_Department.DepartmentID = Convert.ToInt32(dr["DepartmentID"]);
                    if (!dr["DepartmentName"].Equals(System.DBNull.Value))
                        entMST_Department.DepartmentName = Convert.ToString(dr["DepartmentName"]);
                }
                return entMST_Department;
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
                command = "Select * from MST_Department";
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
                command = "Select DepartmentID,DepartmentName from MST_Department order by DepartmentName";
                SqlDataAdapter da = new SqlDataAdapter(command, con);
                DataTable dtMST_Department = new DataTable("dtMST_Department_SelectAll");
                da.Fill(dtMST_Department);
                return dtMST_Department;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        #endregion
    }
}
