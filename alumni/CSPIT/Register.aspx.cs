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
    public string myconnectionstring;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            myconnectionstring = ConfigurationManager.ConnectionStrings["TheaterConnectionString"].ConnectionString;
            FillDropDownList();
        }
    }

    #region FillDropDownList
    private void FillDropDownList()
    {
        CommonFillMethods.FillDropDownListDepartmentID(ddlDepartmentID, myconnectionstring);
    }
    #endregion

    protected void btnRegister_Click(object sender, EventArgs e)
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

        if (ddlDepartmentID.SelectedIndex <     1)
        {
            ddlDepartmentID.BorderColor = System.Drawing.Color.Red;
            ddlDepartmentID.Focus();
            return;
        }
        else
        {
            ddlDepartmentID.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
        }


        if (txtPasswordRegister.Text == "")
        {
            txtPasswordRegister.BorderColor = System.Drawing.Color.Red;
            return;
        }
        else
        {
            txtPasswordRegister.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
        }

        if (txtConfPasswordRegister.Text == "")
        {
            txtConfPasswordRegister.BorderColor = System.Drawing.Color.Red;
            return;
        }
        else
        {
            txtConfPasswordRegister.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
        }


        if (txtPasswordRegister.Text != txtConfPasswordRegister.Text)
        {
            lblRegister.Text = "* Password and Confirm Password Doesn't Match";
            lblRegister.Visible = true;
            txtPasswordRegister.BorderColor = System.Drawing.Color.Red;
            txtConfPasswordRegister.BorderColor = System.Drawing.Color.Red;
            return;
        }
        else
        {
            txtPasswordRegister.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
            txtConfPasswordRegister.BorderColor = System.Drawing.ColorTranslator.FromHtml("#90A9B7");
        }

        if (ddlQuest.SelectedIndex<1)
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

            SqlConnection con = new SqlConnection(myConnectionString);
            con.Open();
            string command;
            command = "select * from MST_User where Email = '" + txtEmailRegister.Text + "'";
            SqlCommand cmd = new SqlCommand(command, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblRegister.Text = "Email - ID already Registered. Please try another Email ID";
                lblRegister.Visible = true;
                return;
            }
            dr.Dispose();
            dr.Close();
            con.Close();

            MST_UserDAL dalMST_User = new MST_UserDAL();
            MST_UserENT entMST_User = new MST_UserENT();

            if (txtEmailRegister.Text.Trim() != String.Empty)
                entMST_User.Email = Convert.ToString(txtEmailRegister.Text.Trim());

            if (txtPasswordRegister.Text.Trim() != String.Empty)
                entMST_User.Password = Convert.ToString(txtPasswordRegister.Text.Trim());
            
                entMST_User.Quest = Convert.ToString(ddlQuest.Text.Trim());

            if (txtAnswer.Text.Trim() != String.Empty)
                entMST_User.Answer = Convert.ToString(txtAnswer.Text.Trim());
        
            entMST_User.DepartmentID = Convert.ToInt32(ddlDepartmentID.SelectedValue);
            entMST_User.Name = Convert.ToString(lblName.Text.Trim());
            entMST_User.Address = Convert.ToString(lblAddress.Text.Trim());
            entMST_User.City = Convert.ToString(lblCity.Text.Trim());
            entMST_User.AEmail = Convert.ToString(lblAEmail.Text.Trim());
            entMST_User.Mobile = Convert.ToString(lblMobile.Text.Trim());
            entMST_User.ClgID = Convert.ToString(lblClgID.Text.Trim());
            entMST_User.YOA = Convert.ToString(lblYOA.Text.Trim());
            entMST_User.YOG = Convert.ToString(lblYOG.Text.Trim());
            entMST_User.Percentage = Convert.ToString(lblPercentage.Text.Trim());
            entMST_User.Entrance = Convert.ToString(lblEntrance.Text.Trim());
            entMST_User.Obtained = Convert.ToString(lblObtained.Text.Trim());
            entMST_User.Outof = Convert.ToString(lblOutof.Text.Trim());
            entMST_User.YOAEdu = Convert.ToString(lblYOAEdu.Text.Trim());
            entMST_User.YOGEdu = Convert.ToString(lblYOGEdu.Text.Trim());
            entMST_User.PercentageEdu = Convert.ToString(lblPercentageEdu.Text.Trim());
            entMST_User.NOI = Convert.ToString(lblNOI.Text.Trim());
            entMST_User.NOC = Convert.ToString(lblNOC.Text.Trim());
            entMST_User.Status = -1 ;
            entMST_User.Placement = -1 ;
            entMST_User.Companyname = Convert.ToString(lblCompanyname.Text.Trim());
            entMST_User.Companytype = Convert.ToString(lblCompanytype.Text.Trim());
            entMST_User.DOJ = Convert.ToString(lblDOJ.Text.Trim());
            entMST_User.Designation = Convert.ToString(lblDesignation.Text.Trim());
            entMST_User.Annual = Convert.ToString(lblAnnual.Text.Trim());
            entMST_User.Experience = -1 ;
            entMST_User.Teaching = -1 ;
            entMST_User.Library = -1 ;
            entMST_User.Laborartory = -1 ;
            entMST_User.Sports = -1 ;
            entMST_User.Hostel = -1 ;
            entMST_User.Feed = Convert.ToString(lblFeed.Text.Trim());

            entMST_User.Created = DateTime.Now;
            entMST_User.Modified = DateTime.Now;

            #region Register New User
            if (Request.QueryString["UserID"] == null)
            {
                if (dalMST_User.Register(entMST_User, myConnectionString))
                {
                    Session["Email"] = entMST_User.Email;
                    Session["DepartmentID"] = entMST_User.DepartmentID;
                    
                    Response.Redirect("Default.aspx?");
                }
                else
                {
                
                }
            }
            #endregion
        }
    }
}
