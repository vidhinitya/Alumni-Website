using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using MultiPlexTheater;
using MultiPlexTheater.ENT;
using MultiPlexTheater.DAL;
using System.Data.SqlClient;
using System.IO;

public partial class AddEditELibrary : System.Web.UI.Page
{

    string myConnectionString = ConfigurationManager.ConnectionStrings["TheaterConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Headname"] == null && Session["FactEmail"] == null)
        {
            lbltop.Visible = false;
            Response.Redirect("Facultylogin.aspx");
        }
        else
        {
            lbltop.Visible = true;
            lbltop.Text = Convert.ToString(Session["Email"]);
        }


        if (!Page.IsPostBack)
        {
            FillDropDownList();
            FillEDoc();
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
        if (Session["DepartmentID"] != null)
        {
            ddlDepartmentID.SelectedValue = Convert.ToString(Session["DepartmentID"]);
            ddlDepartmentID.Enabled = false;
        }
    }
    public void FillEDoc()
    {
        MST_EDocDAL dalMST_EDocDAL = new MST_EDocDAL();
        DataTable dt = null;
        if (Session["DepartmentID"] != null)
        {
            dt = dalMST_EDocDAL.SelectAllByDepartmentId(myConnectionString, Convert.ToInt32(Session["DepartmentID"])); ;
        }
        else
        {
            dt = dalMST_EDocDAL.SelectAll(myConnectionString);
        }
        if (dt != null && dt.Rows.Count > 0)
        {
            gdvEdoc.DataSource = dt;
            gdvEdoc.DataBind();
        }
        else
        {
            gdvEdoc.EmptyDataText = "No data found...";
            gdvEdoc.DataSource = null;
            gdvEdoc.DataBind();
        }
    }
    public string setImage(string imageName)
    {
        string imgurl = "uploadfiles/" + imageName;//thumbs
        return imgurl;
    }
    #endregion

    protected void btnRegister_Click(object sender, EventArgs e)
    {


        if (txtEDocTitle.Text == "")
        {
            txtEDocTitle.BorderColor = System.Drawing.Color.Red;
            txtEDocTitle.Focus();
            return;
        }
        else
        {
            txtEDocTitle.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
        }

        if (!flpEDocFile.HasFile)
        {
            flpEDocFile.BorderColor = System.Drawing.Color.Red;
            return;
        }
        else
        {
            flpEDocFile.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
        }
        //if (txtDescription.Text == "")
        //{
        //    txtDescription.BorderColor = System.Drawing.Color.Red;
        //    return;
        //}
        //else
        //{
        //    txtDescription.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
        //}


        Page.Validate();
        if (Page.IsValid)
        {

            SqlConnection con = new SqlConnection(myConnectionString);
            con.Open();
            string command;


            MST_EDocDAL dalMST_EDocDAL = new MST_EDocDAL();
            MST_EDocENT entMST_EDocENT = new MST_EDocENT();

            if (txtEDocTitle.Text.Trim() != String.Empty)
                entMST_EDocENT.EDocTitle = Convert.ToString(txtEDocTitle.Text.Trim());
            if (ddlDepartmentID.SelectedIndex != 0)
                entMST_EDocENT.DepartmentId = Convert.ToInt32(ddlDepartmentID.SelectedValue);

            string bigpath = Request.PhysicalApplicationPath + "uploadfiles";
            string extension = Path.GetExtension(flpEDocFile.PostedFile.FileName);

            if (flpEDocFile.HasFile)
            {
                string storedFileName = Guid.NewGuid() + extension;
                flpEDocFile.SaveAs(bigpath + "\\" + storedFileName);
                entMST_EDocENT.UploadFileName = storedFileName;
            }

            if (Session["id"] == null)
            {
                dalMST_EDocDAL.Insert(entMST_EDocENT, myConnectionString);
                FillEDoc();
                ResetEdoc();
            }
            else
            {
                entMST_EDocENT.EDocID = Convert.ToInt64(Session["id"]);
                dalMST_EDocDAL.Update(entMST_EDocENT, myConnectionString);
                FillEDoc();
                ResetEdoc();
            }
            Session["id"] = null;
        }

    }
    protected void gdvEdoc_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gdvEdoc.PageIndex = e.NewPageIndex;
        FillEDoc();
    }
    protected void gdvEdoc_PageIndexChanged(object sender, EventArgs e)
    {
    }
    public void ResetEdoc()
    {
        txtEDocTitle.Text = "";
        if (Session["DepartmentID"] == null)
        {
            ddlDepartmentID.SelectedIndex = 0;
        }
    }
    protected void gdvEdoc_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "Edit")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["id"] = id;
            MST_EDocDAL dalMST_EDocDAL = new MST_EDocDAL();
            MST_EDocENT entMST_EDocENT = dalMST_EDocDAL.SelectPK(id, myConnectionString);
            txtEDocTitle.Text = entMST_EDocENT.EDocTitle;
        }
        else if (e.CommandName.ToString() == "Delete")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            MST_EDocDAL dalMST_EDocDAL = new MST_EDocDAL();
            dalMST_EDocDAL.Delete(id, myConnectionString);
            FillEDoc();
            ResetEdoc();
        }
    }
    protected void gdvEdoc_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }

    protected void gdvEdoc_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
}

