<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="_Default" %>

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
                    <table width="430px" style="margin: 0;" cellpadding="-1" cellspacing="-1">
                        <tr>
                           
                            <td style="vertical-align: middle; text-align: right; width: 84px">
                         <h5>Welcome!</h5>       <asp:Label ID="lbltop" runat="server" Font-Bold="true" Font-Size="14px"></asp:Label>
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
            <div class="box round first">
                <h2>
                    Alumni Contact Form</h2>
                <div class="block">
                    <form style="padding: 0 20px;">
                    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False"
                        DataSourceID="SqlDataSource1" GridLines="Horizontal" DataKeyNames="UserID"
                        Font-Size="14px" Font-Names="Arial" AlternatingRowStyle-CssClass="alternaterow"
                        RowStyle-CssClass="mainrow" Width="100%" HeaderStyle-CssClass="headerrow" CssClass="Detailsview">
                        <Fields>
                            <asp:TemplateField HeaderText="Email - ID" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <asp:Label ID="Email" Text='<%# Eval("Email") %>' runat="server" style="margin-left:96px;"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <asp:Label ID="Name" Text='<%# Eval("Name") %>' runat="server" style="margin-left:96px;"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Address" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <asp:Label ID="Address" Text='<%# Eval("Address") %>' runat="server" style="margin-left:96px;"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="City" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <asp:Label ID="City" Text='<%# Eval("City") %>' runat="server" style="margin-left:96px;"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Alternate Email - ID" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <asp:Label ID="AEmail" Text='<%# Eval("AEmail") %>' runat="server" style="margin-left:96px;"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mobile" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <asp:Label ID="Mobile" Text='<%# Eval("Mobile") %>' runat="server" style="margin-left:96px;"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="College ID" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <asp:Label ID="ClgID" Text='<%# Eval("ClgID") %>' runat="server" style="margin-left:96px;"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Year of Admission" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <asp:Label ID="YOA" Text='<%# Eval("YOA") %>' runat="server" style="margin-left:96px;"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Year of Graduation" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <asp:Label ID="YOG" Text='<%# Eval("YOG") %>' runat="server" style="margin-left:96px;"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Percentage" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <asp:Label ID="Percentage" Text='<%# Eval("Percentage") %>' runat="server" style="margin-left:96px;"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Current Company" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <asp:Label ID="Companyname" Text='<%# Eval("Companyname") %>' runat="server" style="margin-left:96px;"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Type of Company" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <asp:Label ID="Companytype" Text='<%# Eval("Companytype") %>' runat="server" style="margin-left:96px;"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Date of Joining" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <asp:Label ID="DOJ" Text='<%# Eval("DOJ") %>' runat="server" style="margin-left:96px;"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Designation" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <asp:Label ID="Designation" Text='<%# Eval("Designation") %>' runat="server" style="margin-left:96px;"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Annual Income" HeaderStyle-Width="150px">
                                <ItemTemplate>
                                    <asp:Label ID="Annual" Text='<%# Eval("Annual") %>' runat="server" style="margin-left:96px;"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                    </asp:DetailsView>
                    <div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" DataSourceMode="DataSet"
                            ConnectionString="<%$ ConnectionStrings:TheaterConnectionString%>" SelectCommand="SELECT * FROM [MST_User] WHERE [UserID] = @UserID">
                            <SelectParameters>
                                <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    </form>
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
