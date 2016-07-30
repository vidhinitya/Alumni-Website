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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            lbltop.Visible = false;
            Response.Redirect("Login.aspx");
        }
        else
        {
            lbltop.Visible = true;
            lbltop.Text = Convert.ToString(Session["Email"]);
            submit.Focus();
        }

        if (!Page.IsPostBack)
        {
            FillControls();
        }
    }

    #region FillControls
    public void FillControls()
    {


        string myConnectionString = ConfigurationManager.ConnectionStrings["TheaterConnectionString"].ConnectionString;

        CommonFillMethods.FillDropDownListDepartmentID(ddlDepartmentID, myConnectionString);

        test.Text = Convert.ToString(Session["DepartmentID"]);

        MST_DepartmentDAL dalMST_Department = new MST_DepartmentDAL();
        MST_DepartmentENT entMST_Department = new MST_DepartmentENT();
        entMST_Department = dalMST_Department.SelectPK(Convert.ToInt32(Session["DepartmentID"]), myConnectionString);

        ddlDepartmentID.SelectedValue = entMST_Department.DepartmentID.ToString();

        if (Session["Email"] != null)
        {
            MST_UserDAL dalMST_User = new MST_UserDAL();
            MST_UserENT entMST_User = new MST_UserENT();

            string connect = ConfigurationManager.ConnectionStrings["TheaterConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connect);
            con.Open();
            string command;
            command = "select * from MST_User where Email = '" + lbltop.Text + "'";
            SqlCommand cmd = new SqlCommand(command, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                entMST_User = dalMST_User.SelectPK(Convert.ToInt32(dr["UserID"]), myConnectionString);
            }
            dr.Dispose();
            dr.Close();
            con.Close();

            test.Text = entMST_User.UserID.ToString();

            txtEmail.Text = lbltop.Text;

            if (!entMST_User.Name.Equals(DBNull.Value))
            {
                txtName.Text = entMST_User.Name.ToString();
            }

            if (!entMST_User.Address.Equals(DBNull.Value))
            {
                txtAddress.Text = entMST_User.Address.ToString();
            }
            if (!entMST_User.City.Equals(DBNull.Value))
            {
                txtCity.Text = entMST_User.City.ToString();
            }
            if (!entMST_User.AEmail.Equals(DBNull.Value))
            {
                txtAEmail.Text = entMST_User.AEmail.ToString();
            }

            if (!entMST_User.Mobile.Equals(DBNull.Value))
            {
                txtMobile.Text = entMST_User.Mobile.ToString();
            }

            if (!entMST_User.ClgID.Equals(DBNull.Value))
            {
                txtClgID.Text = entMST_User.ClgID.ToString();
            }

            ddlYOA.SelectedItem.Text = entMST_User.YOA.ToString();
            ddlYOG.SelectedItem.Text = entMST_User.YOG.ToString();

            if (!entMST_User.Percentage.Equals(DBNull.Value))
            {
                txtPercentage.Text = entMST_User.Percentage.ToString();
            }

            ddlEntrance.SelectedItem.Text = entMST_User.Entrance.ToString();

            if (!entMST_User.OExam.Equals(DBNull.Value))
            {
                txtOExam.Text = entMST_User.OExam.ToString();
            }

            if (!entMST_User.Obtained.Equals(DBNull.Value))
            {
                txtObtained.Text = entMST_User.Obtained.ToString();
            }
            if (!entMST_User.Outof.Equals(DBNull.Value))
            {
                txtOutof.Text = entMST_User.Outof.ToString();
            }

            ddlYOAEdu.SelectedItem.Text = entMST_User.YOAEdu.ToString();
            ddlYOGEdu.SelectedItem.Text = entMST_User.YOGEdu.ToString();

            if (!entMST_User.PercentageEdu.Equals(DBNull.Value))
            {
                txtPercentageEdu.Text = entMST_User.PercentageEdu.ToString();
            }

            if (!entMST_User.NOI.Equals(DBNull.Value))
            {
                txtNOI.Text = entMST_User.NOI.ToString();
            }

            if (!entMST_User.NOC.Equals(DBNull.Value))
            {
                txtNOC.Text = entMST_User.NOC.ToString();
            }


            ddlStatus.SelectedIndex = Convert.ToInt32(entMST_User.Status);

            ddlPlacement.SelectedIndex = Convert.ToInt32(entMST_User.Placement);

            if (!entMST_User.YPlacement.Equals(DBNull.Value))
            {
                txtYPlacement.Text = entMST_User.YPlacement.ToString();
            }

            if (!entMST_User.Companyname.Equals(DBNull.Value))
            {
                txtCompanyname.Text = entMST_User.Companyname.ToString();
            }

            if (!entMST_User.Companytype.Equals(DBNull.Value))
            {
                txtCompanytype.Text = entMST_User.Companytype.ToString();
            }

            if (!entMST_User.DOJ.Equals(DBNull.Value))
            {
                txtDOJ.Text = entMST_User.DOJ.ToString();
            }

            if (!entMST_User.Designation.Equals(DBNull.Value))
            {
                txtDesignation.Text = entMST_User.Designation.ToString();
            }

            if (!entMST_User.Annual.Equals(DBNull.Value))
            {
                txtAnnual.Text = entMST_User.Annual.ToString();
            }

            ddlExperience.SelectedIndex = Convert.ToInt32(entMST_User.Experience);
            ddlTeaching.SelectedIndex = Convert.ToInt32(entMST_User.Teaching);
            ddlLibrary.SelectedIndex = Convert.ToInt32(entMST_User.Library);
            ddlLaboratory.SelectedIndex = Convert.ToInt32(entMST_User.Laborartory);
            ddlSports.SelectedIndex = Convert.ToInt32(entMST_User.Sports);
            ddlHostel.SelectedIndex = Convert.ToInt32(entMST_User.Hostel);

            if (!entMST_User.Feed.Equals(DBNull.Value))
            {
                txtFeed.Text = entMST_User.Feed.ToString();
            }
        }
    }
    #endregion

    protected void submit_Click(object sender, EventArgs e)
    {
        string myConnectionString = ConfigurationManager.ConnectionStrings["TheaterConnectionString"].ConnectionString;

        if (txtName.Text == "")
        {
            
            lblError1.Text = " * Please Insert Correct Name it is Mandatory";
            lblMessage1.Visible = true;
            txtName.BackColor = System.Drawing.ColorTranslator.FromHtml("#f2cece");
            txtName.Focus();
            return;
        }
        else if (txtMobile.Text == "")
        {
            lblError1.Text = " * Please Insert Mobile Number it is Mandatory";
            lblMessage1.Visible = true;
            txtName.BackColor = System.Drawing.Color.White;
            txtMobile.BackColor = System.Drawing.ColorTranslator.FromHtml("#f2cece");
            txtMobile.Focus();
            return;
        }
        else if (ddlDepartmentID.SelectedIndex == 0)
        {
            lblMessage1.Visible = false;

            lblError2.Text = " * Please Select At Least one Department";
            lblMessage2.Visible = true;

            txtMobile.BackColor = System.Drawing.Color.White;
            ddlDepartmentID.BackColor = System.Drawing.ColorTranslator.FromHtml("#f2cece");
            ddlDepartmentID.Focus();
            return;
        }
        else if (ddlYOA.Text == "Select One")
        {
            lblError2.Text = " * Please Select Year of Admission in CSPTI";
            lblMessage2.Visible = true;

            ddlDepartmentID.BackColor   = System.Drawing.Color.White;
            ddlYOA.BackColor = System.Drawing.ColorTranslator.FromHtml("#f2cece");
            ddlYOA.Focus();
            return;
        }
        else if (ddlYOG.Text == "Select One")
        {
            lblError2.Text = " * Please Select Year of Graduation from CSPTI";
            lblMessage2.Visible = true;

            ddlYOA.BackColor = System.Drawing.Color.White;
            ddlYOG.BackColor = System.Drawing.ColorTranslator.FromHtml("#f2cece");
            ddlYOG.Focus();
            return;
        }
        else if (ddlExperience.SelectedIndex == -1)
        {
            lblMessage2.Visible = false;
            lblError3.Text = " * Kindly give us your Feedback";
            lblMessage3.Visible = true;

            ddlYOG.BackColor = System.Drawing.Color.White;
            ddlExperience.BackColor = System.Drawing.ColorTranslator.FromHtml("#f2cece");
            ddlExperience.Focus();
            return;
        }
        else if (ddlTeaching.SelectedIndex == -1)
        {
            lblError3.Text = " * Kindly give us your Feedback";
            lblMessage3.Visible = true;

            ddlExperience.BackColor = System.Drawing.Color.White;
            ddlTeaching.BackColor = System.Drawing.ColorTranslator.FromHtml("#f2cece");
            ddlTeaching.Focus();
            return;
        }
        else if (ddlLibrary.SelectedIndex == -1)
        {
            lblError3.Text = " * Kindly give us your Feedback";
            lblMessage3.Visible = true;

            ddlTeaching.BackColor = System.Drawing.Color.White;
            ddlLibrary.BackColor = System.Drawing.ColorTranslator.FromHtml("#f2cece");
            ddlLibrary.Focus();
            return;
        }
        else if (ddlLaboratory.SelectedIndex == -1)
        {
            lblError3.Text = " * Kindly give us your Feedback";
            lblMessage3.Visible = true;

            ddlLibrary.BackColor = System.Drawing.Color.White;
            ddlLaboratory.BackColor = System.Drawing.ColorTranslator.FromHtml("#f2cece");
            ddlLaboratory.Focus();
            return;
        }
        else if (ddlSports.SelectedIndex == -1)
        {
            lblError3.Text = " * Kindly give us your Feedback";
            lblMessage3.Visible = true;

            ddlLaboratory.BackColor = System.Drawing.Color.White;
            ddlSports.BackColor = System.Drawing.ColorTranslator.FromHtml("#f2cece");
            ddlSports.Focus();
            return;
        }
        else if (ddlHostel.SelectedIndex == -1)
        {
            lblError3.Text = " * Kindly give us your Feedback";
            lblMessage3.Visible = true;

            ddlSports.BackColor = System.Drawing.Color.White;
            ddlHostel.BackColor = System.Drawing.ColorTranslator.FromHtml("#f2cece");
            ddlHostel.Focus();
            return;
        }
        else if (Chkbox.Checked != true)
        {
            lblError3.Text = " * Please Tick the check box belox";
            lblMessage3.Visible = true;
            Chkbox.BackColor = System.Drawing.ColorTranslator.FromHtml("#f2cece");
            ddlHostel.BackColor = System.Drawing.Color.White;
            Chkbox.Focus();
            return;
        }
        else
        {
            Chkbox.BackColor = System.Drawing.Color.White;
            lblMessage3.Visible = false;
        }



        Page.Validate();
        if (Page.IsValid)
        {

            MST_UserDAL dalMST_User = new MST_UserDAL();
            MST_UserENT entMST_User = new MST_UserENT();

            if (txtName.Text.Trim() != String.Empty)
                entMST_User.Name = Convert.ToString(txtName.Text.Trim());

            if (txtAddress.Text.Trim() != String.Empty)
                entMST_User.Address = Convert.ToString(txtAddress.Text.Trim());

            if (txtCity.Text.Trim() != String.Empty)
                entMST_User.City = Convert.ToString(txtCity.Text.Trim());

            if (txtAEmail.Text.Trim() != String.Empty)
                entMST_User.AEmail = Convert.ToString(txtAEmail.Text.Trim());

            if (txtMobile.Text.Trim() != String.Empty)
                entMST_User.Mobile = Convert.ToString(txtMobile.Text.Trim());

            if (ddlDepartmentID.Text.Trim() != String.Empty)
                entMST_User.DepartmentID = Convert.ToInt32(ddlDepartmentID.Text.Trim());
                
            if (txtClgID.Text.Trim() != String.Empty)
                entMST_User.ClgID = Convert.ToString(txtClgID.Text.Trim());

            if (ddlYOA.Text.Trim() != String.Empty)
                entMST_User.YOA = Convert.ToString(ddlYOA.Text.Trim());

            if (ddlYOG.Text.Trim() != String.Empty)
                entMST_User.YOG = Convert.ToString(ddlYOG.Text.Trim());

            if (txtPercentage.Text.Trim() != String.Empty)
                entMST_User.Percentage = Convert.ToString(txtPercentage.Text.Trim());

            if (ddlEntrance.Text.Trim() != String.Empty)
                entMST_User.Entrance = Convert.ToString(ddlEntrance.Text.Trim());

            if (txtOExam.Text.Trim() != String.Empty)
                entMST_User.OExam = Convert.ToString(txtOExam.Text.Trim());

            if (txtObtained.Text.Trim() != String.Empty)
                entMST_User.Obtained = Convert.ToString(txtObtained.Text.Trim());

            if (txtOutof.Text.Trim() != String.Empty)
                entMST_User.Outof = Convert.ToString(txtOutof.Text.Trim());

            if (ddlYOAEdu.Text.Trim() != String.Empty)
                entMST_User.YOAEdu = Convert.ToString(ddlYOAEdu.Text.Trim());

            if (ddlYOGEdu.Text.Trim() != String.Empty)
                entMST_User.YOGEdu = Convert.ToString(ddlYOGEdu.Text.Trim());

            if (txtPercentageEdu.Text.Trim() != String.Empty)
                entMST_User.PercentageEdu = Convert.ToString(txtPercentageEdu.Text.Trim());

            if (txtNOI.Text.Trim() != String.Empty)
                entMST_User.NOI = Convert.ToString(txtNOI.Text.Trim());

            if (txtNOC.Text.Trim() != String.Empty)
                entMST_User.NOC = Convert.ToString(txtNOC.Text.Trim());
        
                entMST_User.Status = Convert.ToInt32(ddlStatus.SelectedIndex);
                entMST_User.Placement = Convert.ToInt32(ddlPlacement.SelectedIndex);
                
            if (txtYPlacement.Text.Trim() != String.Empty)
                entMST_User.YPlacement = Convert.ToString(txtYPlacement.Text.Trim());

            if (txtCompanyname.Text.Trim() != String.Empty)
                entMST_User.Companyname = Convert.ToString(txtCompanyname.Text.Trim());

            if (txtCompanytype.Text.Trim() != String.Empty)
                entMST_User.Companytype = Convert.ToString(txtCompanytype.Text.Trim());

            if (txtDOJ.Text.Trim() != String.Empty)
                entMST_User.DOJ = Convert.ToString(txtDOJ.Text.Trim());

            if (txtDesignation.Text.Trim() != String.Empty)
                entMST_User.Designation = Convert.ToString(txtDesignation.Text.Trim());

            if (txtAnnual.Text.Trim() != String.Empty)
                entMST_User.Annual = Convert.ToString(txtAnnual.Text.Trim());

                entMST_User.Experience = Convert.ToInt32(ddlExperience.SelectedIndex);
                entMST_User.Teaching = Convert.ToInt32(ddlTeaching.SelectedIndex);
                entMST_User.Library = Convert.ToInt32(ddlLibrary.SelectedIndex);
                entMST_User.Laborartory = Convert.ToInt32(ddlLaboratory.SelectedIndex);
                entMST_User.Sports = Convert.ToInt32(ddlSports.SelectedIndex);
                entMST_User.Hostel = Convert.ToInt32(ddlHostel.SelectedIndex);

            if (txtFeed.Text.Trim() != String.Empty)
                entMST_User.Feed = Convert.ToString(txtFeed.Text.Trim());

            entMST_User.Created = DateTime.Now;
            entMST_User.Modified = DateTime.Now;

            #region Insert,Update

            if (Session["Email"] != null)
            {
                entMST_User.UserID = Convert.ToInt32(test.Text.Trim());
                if (dalMST_User.Update(entMST_User, myConnectionString))
                {
                    Response.Redirect("View.aspx");
                    //return;
                }
            }
            else
            {
                //lblErrorMsg.Text = "You took longer time to feel this form. Please Re-Login";

            }
            #endregion
        }
    }

    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
    protected void ddlPlacement_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlPlacement.SelectedIndex == 0)
        {
            placementdiv.Visible = true;
        }
        else if (ddlPlacement.SelectedIndex == 1)
        {
            placementdiv.Visible = false;
        }
    }
}
