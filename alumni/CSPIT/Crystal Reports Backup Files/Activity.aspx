﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Activity.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>MBICt Alumni</title>
    
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
                           <td style="vertical-align: top">
                                <h2 style="margin: 5px 0 0 20px; padding: 0; text-align: justify; font-size: 23px;
                                    color: #325571; font-family: 'Belgrano', serif; font-weight: normal">
                                    Madhuben and Bhanubhai Patel Institute of Technology Alumni Association</h2>
                            </td>
                        </tr>
                    </table>
                </div>
                <div> 
                    <table width="430px" style="margin:0;" cellpadding="-1" cellspacing="-1">
                        <tr>
                           
                            <td style="vertical-align:middle; text-align:right; width:260px" >
                                <asp:Label ID="lbltop" runat="server" Font-Bold="true" Font-Size="14px" ></asp:Label>             
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
               <li class="ic-dashboard"><a href="News.aspx"><span>News</span></a> </li>
                <li class="ic-grid-tables"><a href="ELibrary.aspx"><span>E Library</span></a> </li>
                <li class="ic-notifications"><a href="Message.aspx"><span>Message</span></a></li>
                <li class="ic-charts"><a href="Contact.aspx"><span>Contact Us</span></a></li>
            </ul>
        </div>
        <div class="clear">
        </div>
        <div class="grid_11">
            <div class="box round first" style="min-height:400px">
                <h2>Following are the practices adopted by CSPTI : -</h2>
                <div class="block">
                    <table width="100%" style="padding: 0 10px 30px 10px; font-size:14px" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="padding-left:30px; width:40px">
                            <img runat="server" id="bullet1" src="~/images/Arrow.png" />
                        </td>
                        <td style="vertical-align:top; padding-top:5px"> 
                             <label >Promote a positive image of the institute through information sharing and educational opportunities.</label>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left:30px; width:40px">
                            <img runat="server" id="Img2" src="~/images/Arrow.png" />
                        </td>
                        <td style="vertical-align:top; padding-top:5px"> 
                             <label>Stimulate a continuous interest in the institute through meetings and programs that promotes alumni and the institute community.</label>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left:30px; width:40px">
                            <img runat="server" id="Img3" src="~/images/Arrow.png" />
                        </td>
                        <td style="vertical-align:top; padding-top:5px"> 
                             <label>Maintain and increase the interaction between the Alumni and Industry, Alumni and Faculty, Faculty and Industry and amongst the Alumni.</label>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left:30px; width:40px">
                            <img runat="server" id="Img4" src="~/images/Arrow.png" />
                        </td>
                        <td style="vertical-align:top; padding-top:5px"> 
                             <label>Help the alumni keep in touch with the existing batch of Students and with other similar professional associations in the country as well as abroad.</label>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left:30px; width:40px">
                            <img runat="server" id="Img5" src="~/images/Arrow.png" />
                        </td>
                        <td style="vertical-align:top; padding-top:5px"> 
                             <label>Assisting in placement of students in the Industry.</label>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left:30px; width:40px">
                            <img runat="server" id="Img6" src="~/images/Arrow.png" />
                        </td>
                        <td style="vertical-align:top; padding-top:5px"> 
                             <label>To promote thinking on contemporary issues in management.</label>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left:30px; width:40px">
                            <img runat="server" id="Img7" src="~/images/Arrow.png" />
                        </td>
                        <td style="vertical-align:top; padding-top:5px"> 
                             <label>Providing input in the formation and updating of the course curriculum of the institute, its programs and it's other activities.</label>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left:30px; width:40px">
                            <img runat="server" id="Img8" src="~/images/Arrow.png" />
                        </td>
                        <td style="vertical-align:top; padding-top:5px"> 
                             <label>Maintaining a database of ex-students.</label>
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
