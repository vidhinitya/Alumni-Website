<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>MBICT Alumni</title>
    
    <link rel="stylesheet" type="text/css" href="css/reset.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/text.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/grid.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/layout.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/nav.css" media="screen" />
    <%--<link href='http://fonts.googleapis.com/css?family=Belgrano' rel='stylesheet' type='text/css' />--%>
    <script type="text/javascript" src="js/html5.js"></script>
   <%-- <script src="js/jquery-1.6.4.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui/jquery.ui.widget.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui/jquery.ui.accordion.min.js" type="text/javascript"></script>
    <!-- END: load jquery -->
    
    <script src="js/setup.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(document).ready(function () {
        setupLeftMenu();
            setSidebarHeight();
        
        });
    </script>--%>

</head>
<body>
    <div class="container_12">
        <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" ScriptMode="Inherit" ></asp:ScriptManager>
        <div class="grid_12 header-repeat">
            <div id="branding">
                <div class="floatleft">
                    <table width="550">
                        <tr>
                            <td>
                                <img src="images/mb1.png" alt="Logo" />
                            </td>
                            <td style="vertical-align:top" >
                                <h2 style="margin:5px 0 0 20px; padding:0; text-align:justify; font-size:23px;color:#325571;font-family: 'Belgrano', serif; font-weight:normal" >Madhuben and Bhanubhai Patel Institute of Technology Alumni Association</h2>
                            </td>
                        </tr>
                    </table>
                </div>
                <div> 
                    <table width="430px" style="margin:0;" cellpadding="-1" cellspacing="-1">
                        <tr>
                           
                            <td style="vertical-align:middle; text-align:right; width:84px" >
                              <h5>Welcome!</h5>  <asp:Label ID="lbltop" runat="server" Font-Bold="true" Font-Size="14px" ></asp:Label>             
                            </td>
                            <td style="vertical-align:middle; text-align:center; width:92px; padding-top:5px" >
                                <asp:Button ID="logout" runat="server" Text="Logout" OnClick="Logout_Click" CssClass="btn-black" ForeColor="White" Font-Bold="true" />
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="clear">
                </div>
            </div>
        </div>
        <div class="clear">
        </div>
        <div class="grid_12">
            <ul class="nav main">
                <li class="ic-form-style" style="width:152px;"><a href="Default.aspx"><span>Edit Details</span></a></li>
                <li class="ic-grid-tables" style="width:152px;"><a href="view.aspx"><span>My Details</span></a></li>
                <%--<li class="ic-typography"><a href="Activity.aspx"><span>Activites</span></a></li>--%>
                <li class="ic-gallery dd" style="width:180px;"><a href="Gallery_CE.aspx"><span>Photo Gallery</span></a></li>
                <li class="ic-dashboard" style="width:128px;"><a href="News.aspx"><span>News</span></a> </li>
                <li class="ic-grid-tables" style="width:152px;"><a href="ELibrary.aspx"><span>E Library</span></a> </li>
                <li class="ic-notifications" style="width:152px;"><a href="Message.aspx"><span>Message</span></a></li>
                <%--<li class="ic-charts"><a href="Contact.aspx"><span>Contact Us</span></a></li>--%>
            </ul>
        </div>
        <div class="clear">
        </div>
        <div class="grid_11">
            <div class="box round first">
                <h2>Alumni Form</h2>
                <div class="block">
                    <asp:UpdatePanel ID="UpdatePanel1"  runat="server" >
                        <ContentTemplate>
                            <table class="form" style="margin-left:10px;">
                                <tr>
                                    <td colspan="3">
                                        <div id="lblMessage1" class="message error" visible="false" runat="server" style="margin-top:10px; width:650px" >
                                            <asp:Label ID="lblError1" Font-size="15px" Text="Error" runat="server"></asp:Label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="margin:0;" colspan="2" >
                                        <div class="stat-col">
                                            <p class="blue">1) Contact Details</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col1">
                                        <label>Name<strong style="color:Red">*</strong></label>
                                    </td>
                                    <td style="width:20px">
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:TextBox ID="txtName" runat="server" class="medium" AutoCompleteType="FirstName"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Address</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;">  
                                        <asp:TextBox ID="txtAddress" runat="server" class="large" AutoCompleteType="HomeStreetAddress" Width="550px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;">  
                                        <label>City</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;">  
                                        <asp:TextBox ID="txtCity" runat="server" class="mini" AutoCompleteType="HomeCity"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Mobile Number<strong style="color:Red">*</strong></label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:TextBox ID="txtMobile" runat="server" class="mini" AutoCompleteType="Cellular"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Email ID</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:TextBox ID="txtEmail" runat="server" class="medium" Enabled="false" ></asp:TextBox>
                                    </td>
                                </tr>
                               <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Alternate Email ID</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:TextBox ID="txtAEmail" runat="server" class="medium"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <div id="lblMessage2" class="message error" visible="false" runat="server" style="margin-top:10px; width:650px" >
                                            <asp:Label ID="lblError2" Font-size="15px" Text="Error" runat="server"></asp:Label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="margin:0; padding-top:5px" colspan="2" >
                                        <div class="stat-col">
                                            <p class="blue">2) College Details</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Department of Graduation<strong style="color:Red">*</strong></label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:DropDownList ID="ddlDepartmentID" runat="server" Enabled="false"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>College ID</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:TextBox ID="txtClgID" runat="server" class="mini"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Year of Admission<strong style="color:Red">*</strong></label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:DropDownList ID="ddlYOA" runat="server" CssClass="mini" >
                                            <asp:ListItem>Select One</asp:ListItem>
                                            <asp:ListItem>2000</asp:ListItem>
                                            <asp:ListItem>2001</asp:ListItem>
                                            <asp:ListItem>2002</asp:ListItem>
                                            <asp:ListItem>2003</asp:ListItem>
                                            <asp:ListItem>2004</asp:ListItem>
                                            <asp:ListItem>2005</asp:ListItem>
                                            <asp:ListItem>2006</asp:ListItem>
                                            <asp:ListItem>2007</asp:ListItem>
                                            <asp:ListItem>2008</asp:ListItem>
                                            <asp:ListItem>2009</asp:ListItem>
                                            <asp:ListItem>2010</asp:ListItem>
                                            <asp:ListItem>2011</asp:ListItem>
                                            <asp:ListItem>2012</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Year of Graduation<strong style="color:Red">*</strong></label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:DropDownList ID="ddlYOG" runat="server" CssClass="mini" >
                                            <asp:ListItem>Select One</asp:ListItem>
                                            <asp:ListItem>2004</asp:ListItem>
                                            <asp:ListItem>2005</asp:ListItem>
                                            <asp:ListItem>2006</asp:ListItem>
                                            <asp:ListItem>2007</asp:ListItem>
                                            <asp:ListItem>2008</asp:ListItem>
                                            <asp:ListItem>2009</asp:ListItem>
                                            <asp:ListItem>2010</asp:ListItem>
                                            <asp:ListItem>2011</asp:ListItem>
                                            <asp:ListItem>2012</asp:ListItem>
                                            <asp:ListItem>2013</asp:ListItem>
                                            <asp:ListItem>2014</asp:ListItem>
                                            <asp:ListItem>2015</asp:ListItem>
                                            <asp:ListItem>2016</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Percentage (Aggr / CPI / CGPI)</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:TextBox ID="txtPercentage" runat="server" class="mini"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="margin:0; padding-top:5px" colspan="2" >
                                        <div class="stat-col">
                                            <p class="blue">3) Further Educational Details</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Entrance Exam Name</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:DropDownList ID="ddlEntrance" runat="server" CssClass="mini" >
                                            <asp:ListItem>Select One</asp:ListItem>
                                            <asp:ListItem>CAT</asp:ListItem>
                                            <asp:ListItem>GATE</asp:ListItem>
                                            <asp:ListItem>GRE</asp:ListItem>
                                            <asp:ListItem>TOFEL</asp:ListItem>
                                            <asp:ListItem>IELTS</asp:ListItem>
                                            <asp:ListItem>GPSC</asp:ListItem>
                                            <asp:ListItem>UPSC</asp:ListItem>
                                            <asp:ListItem>NET</asp:ListItem>
                                            <asp:ListItem>GMAT</asp:ListItem>
                                            <asp:ListItem>Others</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>If Others then Name of the Exam.</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:TextBox ID="txtOExam" runat="server" class="medium"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;" colspan="3"> 
                                        <table style="margin:0; padding:0">
                                            <tr>
                                                <td style="width:315px">
                                                    <label style="width:195px">Obtained Score</label>
                                                    <label style="width:20px; font-weight:bold">:</label>
                                                </td>
                                                <td style="width:20px">
                                                    <label><strong>:</strong></label>
                                                </td>
                                                <td>    
                                                    <asp:TextBox ID="txtObtained" runat="server" Width="80px"></asp:TextBox> 
                                                </td>
                                                <td style="width:60px; padding-left:20px" >
                                                    <label style="width:48px">Out Of</label>
                                                </td>
                                                <td style="width:20px">
                                                    <label><strong>:</strong></label>
                                                </td>   
                                                <td>
                                                    <asp:TextBox ID="txtOutof" runat="server" Width="80px"></asp:TextBox> 
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Year of Admission</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:DropDownList ID="ddlYOAEdu" runat="server" CssClass="mini">
                                            <asp:ListItem>Select One</asp:ListItem>
                                            <asp:ListItem>2000</asp:ListItem>
                                            <asp:ListItem>2001</asp:ListItem>
                                            <asp:ListItem>2002</asp:ListItem>
                                            <asp:ListItem>2003</asp:ListItem>
                                            <asp:ListItem>2004</asp:ListItem>
                                            <asp:ListItem>2005</asp:ListItem>
                                            <asp:ListItem>2006</asp:ListItem>
                                            <asp:ListItem>2007</asp:ListItem>
                                            <asp:ListItem>2008</asp:ListItem>
                                            <asp:ListItem>2009</asp:ListItem>
                                            <asp:ListItem>2010</asp:ListItem>
                                            <asp:ListItem>2011</asp:ListItem>
                                            <asp:ListItem>2012</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Name of Institute / University</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:TextBox ID="txtNOI" runat="server" class="large"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Name of Course / Programme</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:TextBox ID="txtNOC" runat="server" class="large"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Year of Graduation</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:DropDownList ID="ddlYOGEdu" runat="server" CssClass="mini">
                                            <asp:ListItem>Select One</asp:ListItem>
                                            <asp:ListItem>2004</asp:ListItem>
                                            <asp:ListItem>2005</asp:ListItem>
                                            <asp:ListItem>2006</asp:ListItem>
                                            <asp:ListItem>2007</asp:ListItem>
                                            <asp:ListItem>2008</asp:ListItem>
                                            <asp:ListItem>2009</asp:ListItem>
                                            <asp:ListItem>2010</asp:ListItem>
                                            <asp:ListItem>2011</asp:ListItem>
                                            <asp:ListItem>2012</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Percentage (Aggr / CPI / CGPI)</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:TextBox ID="txtPercentageEdu" runat="server" class="mini"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Current Status</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:RadioButtonList ID="ddlStatus" runat="server" Height="20px" RepeatDirection="Horizontal" CssClass="radio">
                                            <asp:ListItem> Pursuing </asp:ListItem>
                                            <asp:ListItem> Completed </asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="margin:0; padding-top:5px" colspan="2" >
                                        <div class="stat-col">
                                            <p class="blue">4) Professional Details</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Were you placed through institute?</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:RadioButtonList ID="ddlPlacement" runat="server" Height="20px" RepeatDirection="Horizontal" CssClass="radio" Width="110" onselectedindexchanged="ddlPlacement_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem> Yes </asp:ListItem>
                                            <asp:ListItem> No </asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <div id="placementdiv" runat="server" visible="false">
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>If YES then Name of the company where you placed?</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:TextBox ID="txtYPlacement" runat="server" class="large"></asp:TextBox>
                                    </td>
                                </tr>
                                </div>
                                <tr>
                                    <td style="vertical-align:top; padding-top:10px;"> 
                                        <label>Name of the company / firm you are currently working</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:TextBox ID="txtCompanyname" runat="server" class="medium"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Type of the company / firm</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:TextBox ID="txtCompanytype" runat="server" class="medium"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Date of Joining</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:TextBox ID="txtDOJ" runat="server" class="mini"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Designation</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:TextBox ID="txtDesignation" runat="server" class="mini"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Annual Income</label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:TextBox ID="txtAnnual" runat="server" class="mini"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <div id="lblMessage3" class="message error" visible="false" runat="server" style="margin-top:10px; width:650px" >
                                            <asp:Label ID="lblError3" Font-size="15px" Text="Error" runat="server"></asp:Label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="margin:0; padding-top:5px" colspan="2" >
                                        <div class="stat-col">
                                            <p class="blue">5) Feedback for institute</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>How was your experience at CITC/CSPIT ?<strong style="color:Red">*</strong></label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:RadioButtonList ID="ddlExperience" runat="server" Height="20px" RepeatDirection="Horizontal" CssClass="radio" Width="250">
                                            <asp:ListItem> Excellent </asp:ListItem>
                                            <asp:ListItem> Good </asp:ListItem>
                                            <asp:ListItem> Fair </asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Teaching<strong style="color:Red">*</strong></label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:RadioButtonList ID="ddlTeaching" runat="server" Height="20px" RepeatDirection="Horizontal" CssClass="radio" Width="250">
                                            <asp:ListItem> Excellent </asp:ListItem>
                                            <asp:ListItem> Good </asp:ListItem>
                                            <asp:ListItem> Fair </asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Library Facility<strong style="color:Red">*</strong></label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:RadioButtonList ID="ddlLibrary" runat="server" Height="20px" RepeatDirection="Horizontal" CssClass="radio" Width="250">
                                            <asp:ListItem> Excellent </asp:ListItem>
                                            <asp:ListItem> Good </asp:ListItem>
                                            <asp:ListItem> Fair </asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Laboratory Facility<strong style="color:Red">*</strong></label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:RadioButtonList ID="ddlLaboratory" runat="server" Height="20px" RepeatDirection="Horizontal" CssClass="radio" Width="250">
                                            <asp:ListItem> Excellent </asp:ListItem>
                                            <asp:ListItem> Good </asp:ListItem>
                                            <asp:ListItem> Fair </asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Sports & Cultural<strong style="color:Red">*</strong></label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:RadioButtonList ID="ddlSports" runat="server" Height="20px" RepeatDirection="Horizontal" CssClass="radio" Width="250">
                                            <asp:ListItem> Excellent </asp:ListItem>
                                            <asp:ListItem> Good </asp:ListItem>
                                            <asp:ListItem> Fair </asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px;"> 
                                        <label>Hostel Facility<strong style="color:Red">*</strong></label>
                                    </td>
                                    <td>
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:RadioButtonList ID="ddlHostel" runat="server" Height="20px" RepeatDirection="Horizontal" CssClass="radio" Width="250">
                                            <asp:ListItem> Excellent </asp:ListItem>
                                            <asp:ListItem> Good </asp:ListItem>
                                            <asp:ListItem> Fair </asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px; vertical-align:top"> 
                                        <label>Feed</label>
                                    </td>
                                    <td style="vertical-align:top">
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px;"> 
                                        <asp:TextBox ID="txtFeed" runat="server" class="large" TextMode="MultiLine" BorderColor="#eaeaea" BorderStyle="solid" BorderWidth="1px" Width="360px" ></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:5px; vertical-align:top"> 
                                        <label>I accept these details are varified and correct</label>
                                    </td>
                                    <td style="vertical-align:top">
                                        <label><strong>:</strong></label>
                                    </td>
                                    <td style="padding-top:5px; vertical-align:top"> 
                                        <asp:CheckBox ID="Chkbox" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="padding-top:30px; text-align:center">
                                        <asp:Button ID="submit" runat="server" Text="Save" CssClass="btn btn-navy" style="padding:0 10px" OnClick="submit_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Cancle" runat="server" Text="Cancle" CssClass="btn btn-navy" style="padding:0 10px" />
                                        <asp:Label ID="test" runat="server" Visible="false"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="submit"/>
                        <asp:AsyncPostBackTrigger ControlID="ddlPlacement"/>
                    </Triggers>
                </asp:UpdatePanel>
            </div>
        </div>
        <div class="clear">
        </div>
    </div>
        <div class="clear">
        </div>
        </form>
    </div>
    
</body>
</html>
