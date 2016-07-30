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
    
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

}
