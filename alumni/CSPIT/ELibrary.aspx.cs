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

public partial class ELibrary : System.Web.UI.Page
{
    string myConnectionString = ConfigurationManager.ConnectionStrings["TheaterConnectionString"].ConnectionString;
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
            FillEDoc();
        }
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
    public void FillEDoc()
    {
        MST_EDocDAL dalMST_EDocDAL = new MST_EDocDAL();
        DataTable dt = dalMST_EDocDAL.SelectAll(myConnectionString);
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
    protected void gdvEdoc_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gdvEdoc.PageIndex = e.NewPageIndex;
        FillEDoc();
    }
    protected void gdvEdoc_PageIndexChanged(object sender, EventArgs e)
    {
    }
}
