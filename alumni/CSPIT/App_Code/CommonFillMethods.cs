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
using MultiPlexTheater.DAL;

namespace MultiPlexTheater
{
    public class CommonFillMethods
    {
        #region Constructour
        public CommonFillMethods()
        {

        }
        public enum BranchType
        {
            
        }
        #endregion
        
        #region FillDropDownListRegionID
        public static void FillDropDownListDepartmentID(DropDownList ddl, String Connect)
        {
            MST_DepartmentDAL dalMST_Department = new MST_DepartmentDAL();
            ddl.DataSource = dalMST_Department.SelectForComboBox(Connect);
            ddl.DataValueField = "DepartmentID";
            ddl.DataTextField = "DepartmentName";
            ddl.DataBind();
            ddl.Items.Insert(0, new ListItem(" Select Department ", "-99"));
        }
        #endregion

        #region FillDropDownListRegionID
        public static void FillDropDownListAdminID(DropDownList ddl, String Connect)
        {
            MST_AdminDAL dalMST_Admin = new MST_AdminDAL();
            ddl.DataSource = dalMST_Admin.SelectForComboBox(Connect);
            ddl.DataValueField = "AdminID";
            ddl.DataTextField = "AdminName";
            ddl.DataBind();
            ddl.Items.Insert(0, new ListItem(" Select Admin ", "-99"));
        }
        #endregion

        #region GetCurrentDate
        public static DateTime GetServerDateTime(String Connect)
        {
            try
            {
                MST_AdminDAL dalMST_Admin = new MST_AdminDAL();
                DataTable dt = dalMST_Admin.GetServerDateTime(Connect);
                if (dt.Rows.Count > 0)
                {
                    return Convert.ToDateTime(dt.Rows[0][0].ToString());
                }
                return DateTime.Now;
            }
            catch (Exception ex)
            {
                return DateTime.Now;
            }
        }
        #endregion

    }
}
