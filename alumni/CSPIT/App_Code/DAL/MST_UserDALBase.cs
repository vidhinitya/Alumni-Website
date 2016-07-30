using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using MultiPlexTheater;
using MultiPlexTheater.ENT;
using MultiPlexTheater.DAL;

namespace MultiPlexTheater.DAL
{
    public class MST_UserDALBase
    {
        #region Constructor
        public MST_UserDALBase()
        {
        }
        #endregion

        #region InsertOperation
        public Boolean Insert(MST_UserENT entMST_User, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);

                con.Open();
                string command;
                command = "INSERT INTO MST_User(Name ,Address ,Mobile ,Email) " +
                        " Values('" + entMST_User.Name + "','" + entMST_User.Address + "','" + entMST_User.Mobile + "','" + entMST_User.Email + "')";
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

        #region InsertOperation
        public Boolean Register(MST_UserENT entMST_User, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);

                con.Open();
                string command;
                command = "INSERT INTO MST_User(Email, Pass, Name, Quest, Answer, Address, City, AEmail, Mobile, DepartmentID, ClgID, YOA, YOG, Percentage, Entrance, OExam, Obtained, Outof, YOAEdu, YOGEdu, PercentageEdu, NOI, NOC, Status, Placement, YPlacement, Companyname, Companytype, DOJ, Designation, Annual, Experience, Teaching, Library, Laborartory, Sports, Hostel, Feed, Created) " +
                        " Values('" + entMST_User.Email + "','"
                        + entMST_User.Password + "','"
                        + entMST_User.Name + "','"
                        + entMST_User.Quest + "','"
                        + entMST_User.Answer + "','"
                        + entMST_User.Address + "','"
                        + entMST_User.City + "','"
                        + entMST_User.AEmail + "','"
                        + entMST_User.Mobile + "','"
                        + entMST_User.DepartmentID + "','"
                        + entMST_User.ClgID + "','"
                        + entMST_User.YOA + "','"
                        + entMST_User.YOG + "','"
                        + entMST_User.Percentage + "','"
                        + entMST_User.Entrance + "','"
                        + entMST_User.OExam + "','"
                        + entMST_User.Obtained + "','"
                        + entMST_User.Outof + "','"
                        + entMST_User.YOAEdu + "','"
                        + entMST_User.YOGEdu + "','"
                        + entMST_User.PercentageEdu + "','"
                        + entMST_User.NOI + "','"
                        + entMST_User.NOC + "','"
                        + entMST_User.Status + "','"
                        + entMST_User.Placement + "','"
                        + entMST_User.YPlacement + "','"
                        + entMST_User.Companyname + "','"
                        + entMST_User.Companytype + "','"
                        + entMST_User.DOJ + "','"
                        + entMST_User.Designation + "','"
                        + entMST_User.Annual + "','"
                        + entMST_User.Experience + "','"
                        + entMST_User.Teaching + "','"
                        + entMST_User.Library + "','"
                        + entMST_User.Laborartory + "','"
                        + entMST_User.Sports + "','"
                        + entMST_User.Hostel + "','"
                        + entMST_User.Feed + "','"
                        + entMST_User.Created + "')";
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
        public Boolean Update(MST_UserENT entMST_User, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;


                command = "Update MST_User Set " +
                        "Name = '" + entMST_User.Name + "'," +
                        "Address = '" + entMST_User.Address + "'," +
                        "City = '" + entMST_User.City + "'," +
                        "AEmail = '" + entMST_User.AEmail + "'," +
                        "Mobile = '" + entMST_User.Mobile + "'," +
                        "DepartmentID = '" + entMST_User.DepartmentID + "'," +
                        "ClgID = '" + entMST_User.ClgID + "'," +
                        "YOA = '" + entMST_User.YOA + "'," +
                        "YOG = '" + entMST_User.YOG + "'," +
                        "Percentage = '" + entMST_User.Percentage + "'," +
                        "Entrance = '" + entMST_User.Entrance + "'," +
                        "OExam = '" + entMST_User.OExam + "'," +
                        "Obtained = '" + entMST_User.Obtained + "'," +
                        "Outof = '" + entMST_User.Outof + "'," +
                        "YOAEdu = '" + entMST_User.YOAEdu + "'," +
                        "YOGEdu = '" + entMST_User.YOGEdu + "'," +
                        "PercentageEdu = '" + entMST_User.PercentageEdu + "'," +
                        "NOI = '" + entMST_User.NOI + "'," +
                        "NOC = '" + entMST_User.NOC + "'," +
                        "Status = '" + entMST_User.Status + "'," +
                        "Placement = '" + entMST_User.Placement + "'," +
                        "YPlacement = '" + entMST_User.YPlacement + "'," +
                        "Companyname = '" + entMST_User.Companyname + "'," +
                        "Companytype = '" + entMST_User.Companytype + "'," +
                        "DOJ = '" + entMST_User.DOJ + "'," +
                        "Designation = '" + entMST_User.Designation + "'," +
                        "Annual = '" + entMST_User.Annual + "'," +
                        "Experience = '" + entMST_User.Experience + "'," +
                        "Teaching = '" + entMST_User.Teaching + "'," +
                        "Library = '" + entMST_User.Library + "'," +
                        "Laborartory = '" + entMST_User.Laborartory + "'," +
                        "Sports = '" + entMST_User.Sports + "'," +
                        "Hostel = '" + entMST_User.Hostel + "'," +
                        "Feed = '" + entMST_User.Feed + "'," +
                        "Created ='" + entMST_User.Created + "'," +
                        "Modified = '" + entMST_User.Modified + "' Where UserID= " + entMST_User.UserID ;

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
        public Boolean Delete(Int32 UserID, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "Delete From MST_User Where UserID = " + UserID;
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
        public MST_UserENT SelectPK(Int32 UserID, String connect)
        {
            try
            {
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string command;
                command = "Select * from MST_User Where UserID = " + UserID;
                MST_UserENT entMST_User = new MST_UserENT();
                SqlDataAdapter da = new SqlDataAdapter(command, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                foreach (DataRow dr in dt.Rows)
                {
                    if (!dr["UserID"].Equals(System.DBNull.Value))
                        entMST_User.UserID = Convert.ToInt32(dr["UserID"]);
                    if (!dr["Name"].Equals(System.DBNull.Value))
                        entMST_User.Name = Convert.ToString(dr["Name"]);
                    if (!dr["Pass"].Equals(System.DBNull.Value))
                        entMST_User.Password = Convert.ToString(dr["Pass"]);
                    if (!dr["Address"].Equals(System.DBNull.Value))
                        entMST_User.Address = Convert.ToString(dr["Address"]);
                    if (!dr["Quest"].Equals(System.DBNull.Value))
                        entMST_User.Quest = Convert.ToString(dr["Quest"]);
                    if (!dr["Answer"].Equals(System.DBNull.Value))
                        entMST_User.Answer = Convert.ToString(dr["Answer"]);
                    if (!dr["City"].Equals(System.DBNull.Value))
                        entMST_User.City = Convert.ToString(dr["City"]);
                    if (!dr["AEmail"].Equals(System.DBNull.Value))
                        entMST_User.AEmail = Convert.ToString(dr["AEmail"]);
                    if (!dr["Mobile"].Equals(System.DBNull.Value))
                        entMST_User.Mobile = Convert.ToString(dr["Mobile"]);
                    if (!dr["Email"].Equals(System.DBNull.Value))
                        entMST_User.Email = Convert.ToString(dr["Email"]);
                    if (!dr["DepartmentID"].Equals(System.DBNull.Value))
                        entMST_User.DepartmentID = Convert.ToInt32(dr["DepartmentID"]);
                    if (!dr["ClgID"].Equals(System.DBNull.Value))
                        entMST_User.ClgID = Convert.ToString(dr["ClgID"]);
                    if (!dr["YOA"].Equals(System.DBNull.Value))
                        entMST_User.YOA = Convert.ToString(dr["YOA"]);
                    if (!dr["YOG"].Equals(System.DBNull.Value))
                        entMST_User.YOG = Convert.ToString(dr["YOG"]);
                    if (!dr["Percentage"].Equals(System.DBNull.Value))
                        entMST_User.Percentage = Convert.ToString(dr["Percentage"]);
                    if (!dr["Entrance"].Equals(System.DBNull.Value))
                        entMST_User.Entrance = Convert.ToString(dr["Entrance"]);
                    if (!dr["OExam"].Equals(System.DBNull.Value))
                        entMST_User.OExam = Convert.ToString(dr["OExam"]);
                    if (!dr["Obtained"].Equals(System.DBNull.Value))
                        entMST_User.Obtained = Convert.ToString(dr["Obtained"]);
                    if (!dr["Outof"].Equals(System.DBNull.Value))
                        entMST_User.Outof = Convert.ToString(dr["Outof"]);
                    if (!dr["YOAEdu"].Equals(System.DBNull.Value))
                        entMST_User.YOAEdu = Convert.ToString(dr["YOAEdu"]);
                    if (!dr["YOGEdu"].Equals(System.DBNull.Value))
                        entMST_User.YOGEdu = Convert.ToString(dr["YOGEdu"]);
                    if (!dr["PercentageEdu"].Equals(System.DBNull.Value))
                        entMST_User.PercentageEdu = Convert.ToString(dr["PercentageEdu"]);
                    if (!dr["NOI"].Equals(System.DBNull.Value))
                        entMST_User.NOI = Convert.ToString(dr["NOI"]);
                    if (!dr["NOC"].Equals(System.DBNull.Value))
                        entMST_User.NOC = Convert.ToString(dr["NOC"]);
                    if (!dr["Status"].Equals(System.DBNull.Value))
                        entMST_User.Status = Convert.ToInt32(dr["Status"]);
                    if (!dr["Placement"].Equals(System.DBNull.Value))
                        entMST_User.Placement = Convert.ToInt32(dr["Placement"]);
                    if (!dr["YPlacement"].Equals(System.DBNull.Value))
                        entMST_User.YPlacement = Convert.ToString(dr["YPlacement"]);
                    if (!dr["Companyname"].Equals(System.DBNull.Value))
                        entMST_User.Companyname = Convert.ToString(dr["Companyname"]);
                    if (!dr["Companytype"].Equals(System.DBNull.Value))
                        entMST_User.Companytype = Convert.ToString(dr["Companytype"]);
                    if (!dr["DOJ"].Equals(System.DBNull.Value))
                        entMST_User.DOJ = Convert.ToString(dr["DOJ"]);
                    if (!dr["Designation"].Equals(System.DBNull.Value))
                        entMST_User.Designation = Convert.ToString(dr["Designation"]);
                    if (!dr["Annual"].Equals(System.DBNull.Value))
                        entMST_User.Annual = Convert.ToString(dr["Annual"]);
                    if (!dr["Experience"].Equals(System.DBNull.Value))
                        entMST_User.Experience = Convert.ToInt32(dr["Experience"]);
                    if (!dr["Teaching"].Equals(System.DBNull.Value))
                        entMST_User.Teaching = Convert.ToInt32(dr["Teaching"]);
                    if (!dr["Library"].Equals(System.DBNull.Value))
                        entMST_User.Library = Convert.ToInt32(dr["Library"]);
                    if (!dr["Laborartory"].Equals(System.DBNull.Value))
                        entMST_User.Laborartory = Convert.ToInt32(dr["Laborartory"]);
                    if (!dr["Sports"].Equals(System.DBNull.Value))
                        entMST_User.Sports = Convert.ToInt32(dr["Sports"]);
                    if (!dr["Hostel"].Equals(System.DBNull.Value))
                        entMST_User.Hostel = Convert.ToInt32(dr["Hostel"]);
                    if (!dr["Feed"].Equals(System.DBNull.Value))
                        entMST_User.Feed = Convert.ToString(dr["Feed"]);
                    if (!dr["Created"].Equals(System.DBNull.Value))
                        entMST_User.Created = Convert.ToDateTime(dr["Created"]);
                    if (!dr["Modified"].Equals(System.DBNull.Value))
                        entMST_User.Modified = Convert.ToDateTime(dr["Modified"]);
                }
                return entMST_User;
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
                command = "Select * from MST_User Order By UserID Desc";
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