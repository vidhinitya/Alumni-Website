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
    public class MST_AdminTranDALBase
    {
        #region Constructor
        public MST_AdminTranDALBase()
        {
        }
        #endregion

        #region InsertOperation
        public Boolean Register(MST_AdminTranENT entMST_AdminTran, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);

                con.Open();
                string command;
                command = "INSERT INTO MST_AdminTran(DepartmentID, AdminID) " +
                        " Values('" + entMST_AdminTran.DepartmentID + "','"
                        + entMST_AdminTran.AdminID + "')";
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
        public Boolean Update(MST_AdminTranENT entMST_AdminTran, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;


                command = "Update MST_AdminTran Set " +
                        "DepartmentID = '" + entMST_AdminTran.DepartmentID + "'," +
                        "AdminID = '" + entMST_AdminTran.AdminID + "'," +
                        "' Where AdminTranID= " + entMST_AdminTran.AdminTranID;

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
        public Boolean Delete(Int32 AdminTranID, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "Delete From MST_AdminTran Where AdminTranID = " + AdminTranID;
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
        public MST_AdminTranENT SelectPK(Int32 AdminTranID, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "Select * from MST_AdminTran Where AdminTranID = " + AdminTranID;
                MST_AdminTranENT entMST_AdminTran = new MST_AdminTranENT();
                SqlDataAdapter da = new SqlDataAdapter(command, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                foreach (DataRow dr in dt.Rows)
                {
                    if (!dr["AdminTranID"].Equals(System.DBNull.Value))
                        entMST_AdminTran.AdminTranID = Convert.ToInt32(dr["AdminTranID"]);
                    if (!dr["DepartmentiD"].Equals(System.DBNull.Value))
                        entMST_AdminTran.DepartmentID = Convert.ToInt32(dr["DepartmentID"]);
                    if (!dr["AdminID"].Equals(System.DBNull.Value))
                        entMST_AdminTran.AdminID = Convert.ToInt32(dr["AdminID"]);
                }
                return entMST_AdminTran;
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
                command = "Select * from MST_AdminTran Order By AdminTranID Desc";
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
    }
}