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

public partial class _Default : System.Web.UI.Page 
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
            FillNews();
        }
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
    protected void gdvNews_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gdvNews.PageIndex = e.NewPageIndex;
        FillNews();
    }
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
    protected void gdvNews_PageIndexChanged(object sender, EventArgs e)
    {
    }
}
