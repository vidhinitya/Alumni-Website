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
using System.Data.SqlClient;

public partial class AddEditFaculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Headname"] == null)
        {
            lbltop.Visible = false;
        }
        else
        {
            lbltop.Visible = true;
            lbltop.Text = Convert.ToString(Session["Headname"]);
        }
        if (Session["FactEmail"] == null)
        {
            lbltop.Visible = false;
        }
        else
        {
            lbltop.Visible = true;
            lbltop.Text = Convert.ToString(Session["FactEmail"]);
        }

        if (!Page.IsPostBack)
        {
            FillControls();
            FillDropDownList();
        }
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

    #region FillControls
    private void FillDropDownList()
    {
        string myConnectionString = ConfigurationManager.ConnectionStrings["TheaterConnectionString"].ConnectionString;
        CommonFillMethods.FillDropDownListDepartmentID(ddlDepartmentID, myConnectionString);
    }
    public void FillControls()
    {
        string myConnectionString = ConfigurationManager.ConnectionStrings["TheaterConnectionString"].ConnectionString;
        if (Request.QueryString["AdminID"] != null)
        {
            btnRegister.Enabled = true;
            MST_AdminDAL dalMST_Admin = new MST_AdminDAL();
            MST_AdminENT entMST_Admin = new MST_AdminENT();
            entMST_Admin = dalMST_Admin.SelectPK(Convert.ToInt32(Request.QueryString["AdminID"]), myConnectionString);

            if (!entMST_Admin.AdminName.Equals(DBNull.Value))
            {
                txtAdminName.Text = entMST_Admin.AdminName.ToString();
            }
            if (!entMST_Admin.Pass.Equals(DBNull.Value))
            {
                txtAdminPassword.Text = entMST_Admin.Pass.ToString();
            }
            if (entMST_Admin.DepartmentId != 0)
            {
                ddlDepartmentID.SelectedValue = Convert.ToString(entMST_Admin.DepartmentId);
            }
        }
        else
        {
            btnRegister.Text = "Add User";
        }
    }
    #endregion

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string myConnectionString = ConfigurationManager.ConnectionStrings["TheaterConnectionString"].ConnectionString;

        if (txtAdminName.Text == "")
        {
            txtAdminName.BorderColor = System.Drawing.Color.Red;
            txtAdminName.Focus();
            return;
        }
        else
        {
            txtAdminName.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
        }

        if (txtAdminPassword.Text == "")
        {
            txtAdminPassword.BorderColor = System.Drawing.Color.Red;
            return;
        }
        else
        {
            txtAdminPassword.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
        }
        if (ddlDepartmentID.SelectedIndex == 0)
        {
            ddlDepartmentID.BorderColor = System.Drawing.Color.Red;
            ddlDepartmentID.Focus();
            return;
        }
        else
        {
            ddlDepartmentID.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
        }

        Page.Validate();
        if (Page.IsValid)
        {

            SqlConnection con = new SqlConnection(myConnectionString);
            con.Open();
            string command;
            command = "select * from MST_Admin where AdminName = '" + txtAdminName.Text + "'";
            SqlCommand cmd = new SqlCommand(command, con);
            SqlDataReader dr = cmd.ExecuteReader();
            //if (dr.Read())
            //{
            //    lblRegister.Text = "Admin Name already Registered. Please try another Name";
            //    lblRegister.Visible = true;
            //    return;
            //}
            dr.Dispose();
            dr.Close();
            con.Close();

            MST_AdminDAL dalMST_Admin = new MST_AdminDAL();
            MST_AdminENT entMST_Admin = new MST_AdminENT();

            entMST_Admin.AdminID = Convert.ToInt32(Request.QueryString["AdminID"]);

            if (txtAdminName.Text.Trim() != String.Empty)
                entMST_Admin.AdminName = Convert.ToString(txtAdminName.Text.Trim());

            if (txtAdminPassword.Text.Trim() != String.Empty)
                entMST_Admin.Pass = Convert.ToString(txtAdminPassword.Text.Trim());
            if (ddlDepartmentID.SelectedIndex != 0)
                entMST_Admin.DepartmentId = Convert.ToInt32(ddlDepartmentID.SelectedValue);


            #region Register New User
            if (Request.QueryString["AdminID"] != null)
            {
                if (dalMST_Admin.Update(entMST_Admin, myConnectionString))
                {
                    Response.Redirect("AddEditFaculty.aspx");
                }
            }

            #endregion

        }
    }

}
