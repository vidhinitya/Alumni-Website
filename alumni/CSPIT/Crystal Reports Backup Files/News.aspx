<%@ Page Language="C#" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="_Default" %>

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
        $(document).ready(function() {
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
                    <table width="550">
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
                    <table width="430px" style="margin: 0;" cellpadding="-1" cellspacing="-1">
                        <tr>
                            
                            <td style="vertical-align: middle; text-align: right; width: 84px;">
                             <h5>Welcome!</h5>   <asp:Label ID="lbltop" runat="server" Font-Bold="true" Font-Size="14px"></asp:Label>
                            </td>
                            <td style="vertical-align: middle; text-align: center; width: 92px; padding-top: 5px">
                                <asp:Button ID="logout" runat="server" Text="Logout" OnClick="Logout_Click" CssClass="btn-black"
                                    ForeColor="White" Font-Bold="true" />
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
            <asp:GridView ID="gdvNews" PageSize="5" AllowPaging="true" runat="server" AutoGenerateColumns="False"
                HeaderStyle-HorizontalAlign="Left" OnPageIndexChanged="gdvNews_PageIndexChanged"
                OnPageIndexChanging="gdvNews_PageIndexChanging">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="box round first" style="min-height: 400px">
                                <h2>
                                    News & Announcements : -</h2>
                                <div class="block">
                                    <table width="100%" cellpadding="0" cellspacing="0" class="form">
                                        <tr>
                                            <td style="padding-top: 20px; padding-left: 20px; font-size: 16px; letter-spacing: 1px">
                                                <table>
                                                    <tr>
                                                        <td style="width: 120px">
                                                            <asp:Label ID="label14" runat="server" Font-Bold="true">Title</asp:Label>
                                                        </td>
                                                        <td style="width: 20px">
                                                            <asp:Label ID="label15" runat="server">:</asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="label16" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 120px">
                                                            <asp:Label ID="label17" runat="server" Font-Bold="true">Date</asp:Label>
                                                        </td>
                                                        <td style="width: 20px">
                                                            <asp:Label ID="label18" runat="server">:</asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="label19" runat="server" Text='<%# Convert.ToDateTime(Eval("PublishDate")).ToShortDateString()%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <%--<tr>
                                                        <td style="width: 120px">
                                                            <asp:Label ID="label20" runat="server" Font-Bold="true">Venue</asp:Label>
                                                        </td>
                                                        <td style="width: 20px">
                                                            <asp:Label ID="label21" runat="server">:</asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="label22" runat="server">CHARUSAT Auditorium, PDPIAS Building, CHARUSAT Campus</asp:Label>
                                                        </td>
                                                    </tr>--%>
                                                    <tr>
                                                        <td colspan="3">
                                                            <br />
                                                            <asp:Label ID="label23" runat="server" Text='<%# Eval("Description") %>'> </asp:Label><br />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3">
                                                            <br />
                                                            <asp:Label ID="label27" runat="server" Font-Bold="true">We are excited to meet you, at our own splendid campus. Kindly register yourself for the same through this link: <br /><br /> <a href="https://docs.google.com/spreadsheet/viewform?fromEmail=true&formkey=dFR3RWJ6TXJSaUVWRGlaenNST0Q1bEE6MQ" target="_blank" style="color:navy; text-decoration:underline">Registraion Link</a> <br /><br /><%--<a href="Rmeet.aspx" target="_blank" style="color:navy; text-decoration:underline">1st Reunion Meet Schedule</a>--%>   </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <div class="clear">
        </div>
        </form>
    </div>
</body>
</html>
