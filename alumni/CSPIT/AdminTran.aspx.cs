using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using MultiPlexTheater;
using MultiPlexTheater.ENT;
using MultiPlexTheater.DAL;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            lbltop.Visible = false;
        }
        else
        {
            lbltop.Visible = true;
            lbltop.Text = Convert.ToString(Session["Email"]);
        }

        if (!Page.IsPostBack)
        {
            FillControls();
        }
    }

    #region FillControls
    public void FillControls()
    {


        string myConnectionString = ConfigurationManager.ConnectionStrings["TheaterConnectionString"].ConnectionString;

        CommonFillMethods.FillDropDownListDepartmentID(ddlDepartmentID, myConnectionString);
        CommonFillMethods.FillDropDownListAdminID(ddlAdminID, myConnectionString);

        MST_DepartmentDAL dalMST_Department = new MST_DepartmentDAL();
        MST_DepartmentENT entMST_Department = new MST_DepartmentENT();
        entMST_Department = dalMST_Department.SelectPK(Convert.ToInt32(Session["DepartmentID"]), myConnectionString);

        ddlDepartmentID.SelectedValue = entMST_Department.DepartmentID.ToString();

    }
    #endregion

    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string myConnectionString = ConfigurationManager.ConnectionStrings["TheaterConnectionString"].ConnectionString;


        if (ddlDepartmentID.SelectedIndex < 0)
        {
            ddlDepartmentID.BorderColor = System.Drawing.Color.Red;
            ddlDepartmentID.Focus();
            return;
        }
        else
        {
            ddlDepartmentID.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
        }

        if (ddlAdminID.SelectedIndex < 0)
        {
            ddlAdminID.BorderColor = System.Drawing.Color.Red;
            ddlAdminID.Focus();
            return;
        }
        else
        {
            ddlAdminID.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
        }

        
        Page.Validate();
        if (Page.IsValid)
        {
            MST_AdminTranDAL dalMST_AdminTran = new MST_AdminTranDAL();
            MST_AdminTranENT entMST_AdminTran = new MST_AdminTranENT();

            entMST_AdminTran.DepartmentID = Convert.ToInt32(ddlDepartmentID.SelectedValue);
            entMST_AdminTran.AdminID = Convert.ToInt32(ddlAdminID.SelectedValue);
            

            #region Register New User
            if (Request.QueryString["AdminTranID"] == null)
            {
                if (dalMST_AdminTran.Register(entMST_AdminTran, myConnectionString))
                {
                    Response.Redirect("Userlist.aspx");
                }
                else
                {
                }
            }
            #endregion
        }
    }

}
