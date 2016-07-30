using System;
using System.Collections;
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

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtEmailLogin.Focus();

    }

    #region Button Login

    protected void btnLogin_Click(object sender, EventArgs e)
    {

        if (txtEmailLogin.Text == "")
        {
            txtEmailLogin.BorderColor = System.Drawing.Color.Red;
            txtEmailLogin.Focus();
            return;
        }
        else
        {
            txtEmailLogin.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
        }

        if (txtPasswordLogin.Text == "")
        {
            txtPasswordLogin.BorderColor = System.Drawing.Color.Red;
            txtPasswordLogin.Focus();
            return;
        }
        else
        {
            txtPasswordLogin.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
        }


        string connect = ConfigurationManager.ConnectionStrings["TheaterConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(connect);
        con.Open();
        string command;
        command = "select * from MST_Head where HeadName = '" + txtEmailLogin.Text + "' and Pass='" + txtPasswordLogin.Text + "'";
        SqlCommand cmd = new SqlCommand(command, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["Headname"] = txtEmailLogin.Text;
            
            Session.Timeout = 200;

            Response.Redirect("AddEditAdmin.aspx");
            lbllogin.Visible = false;
        }
        else
        {
            lbllogin.Text = "Enter Correct Username & Password";
            lbllogin.Visible = true;
        }
        dr.Dispose();
        dr.Close();
        con.Close();
    }

    #endregion
}
    
