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
    public class MST_NewsDALBase
    {
        #region Constructor
        public MST_NewsDALBase()
        {

        }
        #endregion

        #region InsertOperation
        public Boolean Insert(MST_NewsENT entMST_News, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);

                con.Open();
                string command;
                command = "INSERT INTO MST_News(Description,Title,PublishDate) " +
                        " Values('" + entMST_News.Description + "','" + entMST_News.Title + "','" + entMST_News.PublishDate + "')";

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
        public Boolean Update(MST_NewsENT entMST_News, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "Update MST_News Set " +
                        "Description = '" + entMST_News.Description + "',Title='" + entMST_News.Title + "',PublishDate='" + entMST_News.PublishDate + "' Where NewsID= " + entMST_News.NewsID;

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
        public Boolean Delete(Int32 NewsID, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "Delete From MST_News Where NewsID= " + NewsID;
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
        public MST_NewsENT SelectPK(Int32 NewsID, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "Select * from MST_News Where NewsID = " + NewsID;
                MST_NewsENT entMST_News = new MST_NewsENT();
                SqlDataAdapter da = new SqlDataAdapter(command, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                foreach (DataRow dr in dt.Rows)
                {
                    if (!dr["NewsID"].Equals(System.DBNull.Value))
                        entMST_News.NewsID = Convert.ToInt32(dr["NewsID"]);
                    if (!dr["Description"].Equals(System.DBNull.Value))
                        entMST_News.Description = Convert.ToString(dr["Description"]);
                    if (!dr["Title"].Equals(System.DBNull.Value))
                        entMST_News.Title = Convert.ToString(dr["Title"]);
                    if (!dr["PublishDate"].Equals(System.DBNull.Value))
                        entMST_News.PublishDate = Convert.ToDateTime(dr["PublishDate"]);
                }
                return entMST_News;
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
                command = "Select * from MST_News order by PublishDate desc ";
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
