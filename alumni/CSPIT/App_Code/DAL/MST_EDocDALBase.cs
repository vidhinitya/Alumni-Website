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
    public class MST_EDocDALBase
    {
        #region Constructor
        public MST_EDocDALBase()
        {

        }
        #endregion

        #region InsertOperation
        public Boolean Insert(MST_EDocENT entMST_Doc, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);

                con.Open();
                string command;
                command = "INSERT INTO MST_Edoc(EDocTitle,UploadFileName,CreatedDate,DepartmentID) " +
                        " Values('" + entMST_Doc.EDocTitle + "','" + entMST_Doc.UploadFileName + "','" + CommonFillMethods.GetServerDateTime(connect) + "','" + entMST_Doc.DepartmentId + "')";

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
        public Boolean Update(MST_EDocENT entMST_Doc, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "Update MST_Edoc Set " +
                        "EDocTitle = '" + entMST_Doc.EDocTitle + "',UploadFileName='" + entMST_Doc.UploadFileName + "',CreatedDate='" + CommonFillMethods.GetServerDateTime(connect) + "',DepartmentID='" + entMST_Doc.DepartmentId + "' Where EDocID= " + entMST_Doc.EDocID;

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
        public Boolean Delete(Int32 EDocID, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "Delete From MST_Edoc Where EDocID= " + EDocID;
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
        public MST_EDocENT SelectPK(Int32 EDocID, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "Select * from MST_Edoc Where EDocID = " + EDocID;
                MST_EDocENT entMST_Doc = new MST_EDocENT();
                SqlDataAdapter da = new SqlDataAdapter(command, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                foreach (DataRow dr in dt.Rows)
                {
                    if (!dr["EDocID"].Equals(System.DBNull.Value))
                        entMST_Doc.EDocID = Convert.ToInt32(dr["EDocID"]);
                    if (!dr["EDocTitle"].Equals(System.DBNull.Value))
                        entMST_Doc.EDocTitle = Convert.ToString(dr["EDocTitle"]);
                    if (!dr["UploadFileName"].Equals(System.DBNull.Value))
                        entMST_Doc.UploadFileName = Convert.ToString(dr["UploadFileName"]);
                    if (!dr["CreatedDate"].Equals(System.DBNull.Value))
                        entMST_Doc.CreatedDate = Convert.ToDateTime(dr["CreatedDate"]);
                }
                return entMST_Doc;
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
                command = "Select row_number() over (order by CreatedDate desc) AS RowNumber,E.*,D.DepartmentName from MST_Edoc E Inner Join MST_Department D ON E.DepartmentId = D.DepartmentID order by CreatedDate desc";
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
        public DataTable SelectAllByDepartmentId(String connect, int departmentID)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "Select row_number() over (order by CreatedDate desc) AS RowNumber,E.*,D.DepartmentName from MST_Edoc E Inner Join MST_Department D ON E.DepartmentId = D.DepartmentID where E.DepartmentID='" + departmentID + "' order by CreatedDate desc ";
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
