<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ELibrary.aspx.cs" Inherits="ELibrary" %>

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


    <script src="js/jquery-1.6.4.min.js" type="text/javascript"></script>

    <script src="js/jquery-ui/jquery.ui.widget.min.js" type="text/javascript"></script>

    <script src="js/jquery-ui/jquery.ui.accordion.min.js" type="text/javascript"></script>

    

    <script src="js/setup.js" type="text/javascript"></script>
    <style type="text/css">
       a {
	color: #000;
	font-weight:bold;
	text-decoration: none;
        }
a:hover {
	color:#333!important;
	text-decoration:underline!important;
}
        </style>
    <script type="text/javascript">
        $(document).ready(function() {
            setupLeftMenu();
            setSidebarHeight();

        });
    </script>

</head>
<body>
    <div class="container_12">
        <form id="Form1" runat="server">
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
                    <table width="350px" style="margin: 0;" cellpadding="-1" cellspacing="-1">
                        <tr>
                           
                            <td style="vertical-align: middle; text-align: right; width: 84px">
                              <h5>Welcome!</h5>  <asp:Label ID="lbltop" runat="server" Font-Bold="true" Font-Size="14px"></asp:Label>
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
               <%-- <li class="ic-typography"><a href="Activity.aspx"><span>Activites</span></a></li>--%>
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
            <div class="box round first" style="min-height: 400px">
                <h2>
                    ELibrary : -</h2>
                <div class="block">
                    <asp:GridView ID="gdvEdoc" PageSize="10" AllowPaging="true" runat="server" AutoGenerateColumns="False"
                        HeaderStyle-HorizontalAlign="Left" OnPageIndexChanged="gdvEdoc_PageIndexChanged"
                        OnPageIndexChanging="gdvEdoc_PageIndexChanging">
                        <Columns>
                            <asp:TemplateField HeaderText="Title" ControlStyle-Width="150px" ItemStyle-VerticalAlign="Middle"
                                HeaderStyle-CssClass="gridHeaderCss" ControlStyle-CssClass="gridCss">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("RowNumber") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ELibrary Document" ControlStyle-Width="150px" ItemStyle-VerticalAlign="Middle"
                                HeaderStyle-CssClass="gridHeaderCss" ControlStyle-CssClass="gridCss">
                                <ItemTemplate>
                                    <a href='<%#setImage(Eval("UploadFileName").ToString()) %>' style="text-decoration: underline;
                                        font-weight: normal" title="View ELibrary Document">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("EDocTitle") %>'></asp:Label></a>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <div class="clear">
        </div>
        </form>
    </div>
</body>
</html>
