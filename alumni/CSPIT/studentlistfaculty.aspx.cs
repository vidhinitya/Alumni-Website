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

public partial class studentlistfaculty : System.Web.UI.Page
{
    string myConnectionString = ConfigurationManager.ConnectionStrings["TheaterConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Headname"] == null && Session["FactEmail"] == null)
        {
            lbltop.Visible = false;
            Response.Redirect("facultylogin.aspx");
        }
        else
        {
            lbltop.Visible = true;
            lbltop.Text = Convert.ToString(Session["Email"]);
        }

        if (!Page.IsPostBack)
        {
            student();
        }

    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
    public void student()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["TheaterConnectionString"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("select * from MST_User", cn);
        
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        cn.Close();
    }

}
