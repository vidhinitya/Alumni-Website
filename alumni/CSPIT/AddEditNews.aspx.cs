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

public partial class AddEditNews : System.Web.UI.Page
{

    string myConnectionString = ConfigurationManager.ConnectionStrings["TheaterConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Headname"] == null)
        {
            lbltop.Visible = false;
            Response.Redirect("Headlogin.aspx");
        }
        else
        {
            lbltop.Visible = true;
            lbltop.Text = Convert.ToString(Session["Email"]);
        }


        if (!Page.IsPostBack)
        {
            FillNews();
            txtDate.Text = CommonFillMethods.GetServerDateTime(myConnectionString).ToString("MM/dd/yyyy");
        }
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

    #region FillControls
    public void FillNews()
    {
        MST_NewsDAL dalMST_News = new MST_NewsDAL();
        DataTable dt = dalMST_News.SelectAll(myConnectionString);
        if (dt.Rows.Count > 0)
        {
            gdvNews.DataSource = dt;
            gdvNews.DataBind();
        }
        else
        {
            gdvNews.EmptyDataText = "No data found...";
            gdvNews.DataSource = null;
            gdvNews.DataBind();
        }
    }
    #endregion

    protected void btnRegister_Click(object sender, EventArgs e)
    {


        if (txtTitle.Text == "")
        {
            txtTitle.BorderColor = System.Drawing.Color.Red;
            txtTitle.Focus();
            return;
        }
        else
        {
            txtTitle.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
        }
        if (txtDate.Text == "")
        {
            txtDate.BorderColor = System.Drawing.Color.Red;
            return;
        }
        else
        {
            txtDate.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
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


            MST_NewsDAL dalMST_News = new MST_NewsDAL();
            MST_NewsENT entMST_News = new MST_NewsENT();

            if (txtTitle.Text.Trim() != String.Empty)
                entMST_News.Title = Convert.ToString(txtTitle.Text.Trim());

            if (txtDescription.Text.Trim() != String.Empty)
                entMST_News.Description = Convert.ToString(txtDescription.Text.Trim());

            entMST_News.PublishDate = Convert.ToDateTime(txtDate.Text);
            if (Session["id"] == null)
            {
                dalMST_News.Insert(entMST_News, myConnectionString);
                FillNews();
                ResetNews();
            }
            else
            {
                entMST_News.NewsID = Convert.ToInt64(Session["id"]);
                dalMST_News.Update(entMST_News, myConnectionString);
                FillNews();
                ResetNews();
            }

        }

    }
    protected void gdvNews_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gdvNews.PageIndex = e.NewPageIndex;
        FillNews();
    }
    protected void gdvNews_PageIndexChanged(object sender, EventArgs e)
    {
    }
    public void ResetNews()
    {
        txtDate.Text = CommonFillMethods.GetServerDateTime(myConnectionString).ToString("MM/dd/yyyy");
        txtDescription.Text = "";
        txtTitle.Text = "";
    }
    protected void gdvNews_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "Edit")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["id"] = id;
            MST_NewsDAL dalMST_News = new MST_NewsDAL();
            MST_NewsENT entMST_News = dalMST_News.SelectPK(id, myConnectionString);
            txtTitle.Text = entMST_News.Title;
            txtDescription.Text = entMST_News.Description;
            txtDate.Text = entMST_News.PublishDate.ToString("MM/dd/yyyy");
        }
        else if (e.CommandName.ToString() == "Delete")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            MST_NewsDAL dalMST_News = new MST_NewsDAL();
            dalMST_News.Delete(id, myConnectionString);
            FillNews();
            ResetNews();
        }
    }
    protected void gdvNews_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }

    protected void gdvNews_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
}

