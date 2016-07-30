<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Rmeet.aspx.cs" Inherits="_Default" %>

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
    
    <script src="js/jquery-1.6.4.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui/jquery.ui.widget.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui/jquery.ui.accordion.min.js" type="text/javascript"></script>
    <!-- END: load jquery -->
    
    <script src="js/setup.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(document).ready(function () {
        setupLeftMenu();
            setSidebarHeight();
        
        });
    </script>

</head>
<body>
    <div class="container_12">
        <form runat="server">
        <div class="grid_12 header-repeat">
            <div id="branding">
                <div class="floatleft">
                    <table width="500">
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
                            <td style="vertical-align:top;text-align:right" >
                                <img src="img/user.png" alt="Profile Pic" style="padding-top:5px" height="25" />
                            </td>
                            <td style="vertical-align:middle; text-align:right; width:260px" >
                            <h5>Welcome!</h5>    <asp:Label ID="lbltop" runat="server" Font-Bold="true" Font-Size="14px" ></asp:Label>             
                            </td>
                            <td style="vertical-align:middle; text-align:right; width:80px; padding-top:5px" >
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
                <li class="ic-form-style"><a href="Default.aspx"><span>Edit Details</span></a></li>
                <li class="ic-grid-tables"><a href="view.aspx"><span>My Details</span></a></li>
                <li class="ic-typography"><a href="Activity.aspx"><span>Activites</span></a></li>
                <li class="ic-gallery dd"><a href="Gallery_CE.aspx"><span>Photo Gallery</span></a></li>
                <li class="ic-dashboard"><a href="News.aspx"><span>News & Announcements</span></a> </li>
                <li class="ic-notifications"><a href="Message.aspx"><span>Message</span></a></li>
                <li class="ic-charts"><a href="Contact.aspx"><span>Contact Us</span></a></li>
            </ul>
        </div>
        <div class="clear">
        </div>
        <div class="grid_11">
            <div class="box round first" style="min-height:400px">
                <h2>1st Reunion Meet of CSPIT</h2>
                <div class="block">
                    <table width="100%" style="padding: 0 10px 30px 10px; font-size:14px; ">
                    <tr>
                        <td colspan="4">
                            <h6>December 30, 2012, Sunday</h6>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left:15px; width:40px; border-bottom:solid 1px #ccc; padding-top:10px">
                            <strong>Sr. No</strong>
                        </td>
                        <td style="border-bottom:solid 1px #ccc;width:150px;">
                             <label style="vertical-align:top;"><strong>Time</strong></label>
                        </td>
                        <td style="border-bottom:solid 1px #ccc;width:250px; padding-right:10px">
                            <label style="vertical-align:top;"><strong>Activity / Program</strong></label>
                        </td>
                        <td style="border-bottom:solid 1px #ccc; width:250px; margin-left:20px;">
                            <label style="vertical-align:top;"><strong>Venue</strong></label>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left:30px; width:40px">
                            <strong>1)</strong>
                        </td>
                        <td style="padding-top:5px;">
                             <label style="vertical-align:top;">2.00 p.m. to 2.30 p.m.</label>
                        </td>
                        <td>
                            <label style="vertical-align:top;">Electronics & Communication</label>
                        </td>
                        <td>
                            <label style="vertical-align:top;">CHARUSAT Auditorium, PDPIAS building, CHARUSAT Campus, Changa </label>
                        </td>
                    </tr>
                     <tr>
                        <td style="padding-left:30px; width:40px">
                            <strong>2)</strong>
                        </td>
                        <td style="padding-top:5px;">
                             <label style="vertical-align:top;">2.30 p.m. to 3.00 p.m.</label>
                        </td>
                        <td>
                            <label style="vertical-align:top;">CHARUSAT Movie</label>
                        </td>
                        <td>
                            <label style="vertical-align:top;">CHARUSAT Auditorium, PDPIAS building, CHARUSAT Campus, Changa </label>
                        </td>
                    </tr>
                     <tr>
                        <td style="padding-left:30px; width:40px">
                            <strong>3)</strong>
                        </td>
                        <td style="padding-top:5px;">
                             <label style="vertical-align:top;">3.00 p.m. to 3.15 p.m.</label>
                        </td>
                        <td>
                            <label style="vertical-align:top;">Address by the Principal</label>
                        </td>
                        <td>
                            <label style="vertical-align:top;">CHARUSAT Auditorium</label>
                        </td>
                    </tr>
                     <tr>
                        <td style="padding-left:30px; width:40px">
                            <strong>4)</strong>
                        </td>
                        <td style="padding-top:5px;">
                             <label style="vertical-align:top;">3.15 p.m. to 3.30 p.m.</label>
                        </td>
                        <td>
                            <label style="vertical-align:top;">Tea Break</label>
                        </td>
                        <td>
                            <label style="vertical-align:top;">PDPIAS Square</label>
                        </td>
                    </tr>
                     <tr>
                        <td style="padding-left:30px; width:40px">
                            <strong>5)</strong>
                        </td>
                        <td style="padding-top:5px;">
                             <label style="vertical-align:top;">3.30 p.m. to 4.15 p.m.</label>
                        </td>
                        <td>
                            <label style="vertical-align:top;">Departmental Visit & discussion about development in the department</label>
                        </td>
                        <td>
                            <label style="vertical-align:top;">Respective Department(s)</label>
                        </td>
                    </tr>
                     <tr>
                        <td style="padding-left:30px; width:40px">
                            <strong>6)</strong>
                        </td>
                        <td style="padding-top:5px;">
                             <label style="vertical-align:top;">4.15 p.m. to 5.30 p.m.</label>
                        </td>
                        <td>
                            <label style="vertical-align:top;">Gathering for Photo shoot and Alumni Feedback</label>
                        </td>
                        <td>
                            <label style="vertical-align:top;">CHARUSAT Auditorium</label>
                        </td>
                    </tr>
                     <tr>
                        <td style="padding-left:30px; width:40px">
                            <strong>7)</strong>
                        </td>
                        <td style="padding-top:5px;">
                             <label style="vertical-align:top;">Ms Kamakshi Kaul</label>
                        </td>
                        <td>
                            <label style="vertical-align:top;">Electrical</label>
                        </td>
                        <td>
                            <label style="vertical-align:top;">9428358591</label>
                        </td>
                    </tr>
                     <tr>
                        <td style="padding-left:30px; width:40px">
                            <strong>8)</strong>
                        </td>
                        <td style="padding-top:5px;">
                             <label style="vertical-align:top;">5.30 p.m. to 7.00 p.m.</label>
                        </td>
                        <td>
                            <label style="vertical-align:top;">Cultural Event & Band Performance (if any)</label>
                        </td>
                        <td>
                            <label style="vertical-align:top;">Central Lawns, CHARUSAT Campus, Changa</label>
                        </td>
                    </tr>
                     <tr>
                        <td style="padding-left:30px; width:40px">
                            <strong>9)</strong>
                        </td>
                        <td style="padding-top:5px;">
                             <label style="vertical-align:top;">7.00 p.m. to 8.00 p.m.</label>
                        </td>
                        <td>
                            <label style="vertical-align:top;">Dinner</label>
                        </td>
                        <td>
                            <label style="vertical-align:top;">Central Square CE/IT Building CHARUSAT Campus, Changa </label>
                        </td>
                    </tr>
                </table>
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
