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
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnForgot_Click(object sender, EventArgs e)
    {
        string myConnectionString = ConfigurationManager.ConnectionStrings["TheaterConnectionString"].ConnectionString;

        if (txtEmailRegister.Text == "")
        {
            txtEmailRegister.BorderColor = System.Drawing.Color.Red;
            txtEmailRegister.Focus();
            return;
        }
        else
        {
            txtEmailRegister.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
        }

        if (ddlQuest.SelectedIndex < 1)
        {
            ddlQuest.BorderColor = System.Drawing.Color.Red;
            ddlQuest.Focus();
            return;
        }
        else
        {
            ddlQuest.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
        }


        if (txtAnswer.Text == "")
        {
            txtAnswer.BorderColor = System.Drawing.Color.Red;
            return;
        }
        else
        {
            txtAnswer.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
        }

        Page.Validate();
        if (Page.IsValid)
        {
            MST_UserDAL dalMST_User = new MST_UserDAL();
            MST_UserENT entMST_User = new MST_UserENT();

            string connect = ConfigurationManager.ConnectionStrings["TheaterConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connect);
            con.Open();
            string command;
            command = "select * from MST_User where Email = '" + txtEmailRegister.Text + "'";
            SqlCommand cmd = new SqlCommand(command, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                entMST_User = dalMST_User.SelectPK(Convert.ToInt32(dr["UserID"]), myConnectionString);

                if (ddlQuest.Text == Convert.ToString(entMST_User.Quest))
                {
                    if (txtAnswer.Text == Convert.ToString(entMST_User.Answer))
                    {
                        lblPassword.Text = "Your password is : " + Convert.ToString(entMST_User.Password);
                        forgot.Visible = false;
                        remember.Visible = true;
                        btnRegister.Visible = false;
                    }
                    {
                        lblerror.Text = "Please enter Correct answer";
                        lblerror.Visible = true; 
                    }
                }
                else
                {
                    lblerror.Text = "Please select appropriate question";
                    lblerror.Visible = true;
                }
            }
            else
            {
                lblerror.Text = "Please Enter correct Email ID";
                lblerror.Visible = true;
            }

            dr.Dispose();
            dr.Close();
            con.Close();



        }
    }
}
