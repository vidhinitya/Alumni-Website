<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Message.aspx.cs" Inherits="_Default" %>

<%@ Register src="msg.ascx" tagname="msg" tagprefix="uc1" %>

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
                            
                            <td style="vertical-align:middle; text-align:right; width:84px" >
                             <h5>Welcome!</h5>   <asp:Label ID="lbltop" runat="server" Font-Bold="true" Font-Size="14px" ></asp:Label>             
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
                
                <li class="ic-gallery dd" style="width:180px;"><a href="Gallery_CE.aspx"><span>Photo Gallery</span></a></li>
                <li class="ic-dashboard" style="width:128px;"><a href="News.aspx"><span>News</span></a> </li>
                <li class="ic-grid-tables" style="width:152px;"><a href="ELibrary.aspx"><span>E Library</span></a> </li>
                <li class="ic-notifications" style="width:152px;"><a href="Message.aspx"><span>Message</span></a></li>
               
            </ul>
        </div>
        <div class="clear">
        </div>
      
        <div class="grid_11">
            <div class="box round first" style="min-height:400px">
                <h2>Principal's Message -</h2>
                <div class="block">

                    <%--<table width="100%" cellpadding="0" cellspacing="0" style="font-size:13px; font-family:Verdana;">
                        <tr>
                            <td style="vertical-align:top; padding:0 15px; text-align:justify">
                                <table>
                                    <tr>
                                        <td style="padding-top:5px;">
                                             <label style="vertical-align:top;">Dear Students,</label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px 0;">
                                             <label style="vertical-align:top;">Hope you all are doing well. Your teachers must have contacted you people a lot in the name of getting your contacts details, presently where you are working, where you have worked in past and all such personal and professional details in the name of Alumni Association. </label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px 0;">
                                             <label style="vertical-align:top;">This is in continuation regarding the same. We have planned a GLOBAL REUNION of all the students of CITC (presently CSPIT, CHARUSAT University). All the students it include all pass out students irrespective of their year/department. On 30th December 2012 we are organizing the reunion at campus of almamater we will have a musical night and dinner together. We chose the date thinking of starting the New Year with a reunion of our family consisting of all those who have passed out. On this occasion we will share our experiences, remember old sweet memories, and learn from you.</label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px 0;">
                                             <label style="vertical-align:top;">A formal invitation letter is being sent to you soon through the mail ids. Those students who have provided us the data by registering on our website or by answering our calls will be getting the same shortly. We plan to do such activities more often now. Kindly acknowledge the same and send us confirmation of your presence for the event, so that we can make necessary arrangements. You are invited along with your family members for the reunion. Those of you who have not provided us the database kindly fill up the form available on the website or answer the calls of our faculty members. The registration is free of cost. Please do the same as soon as possible so that we can send you the invitations and start making arrangements. </label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px 0;">
                                             <label style="vertical-align:top;">With this reunion I want to bond you students and we faculties to a new level enriching lives. We are available for you ever, as we are a family. Our bonding was not limited to the years when you were in college, graduating, but this bond is forever till we are living our lives. By this message I want you all to plan such that you can attend the GLOBAL REUNION of CITC (now CSPIT) and also help us to get into contact with your friends who have not yet registered with the association. Your teachers will surely nag you again until all the tributaries don’t reunite to form an ocean, an ocean of CITCian’s (now CSPITian’s).</label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px 0;">
                                             <label style="vertical-align:top;">Hope a greater participation of all students out there for a greater cause and making this event successful. Help us to make this association stronger and active. </label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px 0;">
                                             <label style="vertical-align:top;">Regards,</label><br />
                                             <label style="vertical-align:top; font-weight:bold">Dr Niraj Shah, Convener, Central Council & Principal, CSPIT (Formerly CITC)</label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px 0;">
                                             <label style="vertical-align:top; font-weight:bold; font-style:italic">For confirming your presence in the event kindly contact your department Alumni committee members</label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>--%>
                    <uc1:msg ID="msg1" runat="server" />
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
