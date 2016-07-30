<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddEditNews.aspx.cs" Inherits="AddEditNews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="head1">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>MBICT Alumni Administration</title>
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
            $('.not-edit').attr("readonly", "readonly");
        });
    </script>

</head>
<body>
    <div class="container_12">
        <form id="form1" runat="server">
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
                    <table width="430px" style="margin: 0;" cellpadding="-1" cellspacing="-1">
                        <tr>
                          
                            <td style="vertical-align: middle; text-align: right; width: 260px">
                               <asp:Label ID="lbltop" runat="server" Font-Bold="true" Font-Size="14px"></asp:Label>
                            </td>
                            <td style="vertical-align: middle; text-align: right; width: 80px; padding-top: 5px">
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
                <li class="ic-form-style"><a href="AddEditAdmin.aspx"><span>Create Department / Faculty User</span></a></li>
                <li class="ic-grid-tables"><a href="AddEditNews.aspx"><span>News Master</span></a></li>
                <li class="ic-grid-tables"><a href="studentlistadmin.aspx"><span>Student Master</span></a></li>
               
            </ul>
        </div>
     
        <div class="clear">
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="grid_11">
                    <div class="box round first" style="min-height: 400px">
                        <h2>
                            News Master</h2>
                        <div class="block">
                            <table width="100%" style="padding: 0 10px 30px 10px; font-size: 13px;">
                                <tr>
                                    <td colspan="3" align="center">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="lblRegister" runat="server" Visible="false"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col1" style="padding-top: 30px; width: 100px; padding-left: 250px">
                                        <label>
                                            Title<strong style="color: Red">*</strong></label>
                                    </td>
                                    <td style="width: 20px">
                                        <label>
                                            <strong>:</strong></label>
                                    </td>
                                    <td style="padding-top: 5px;">
                                        <asp:TextBox ID="txtTitle" runat="server" class="small" Height="23"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 15px; padding-left: 250px">
                                        <label>
                                            Published Date<strong style="color: Red">*</strong></label>
                                    </td>
                                    <td style="width: 20px">
                                        <label>
                                            <strong>:</strong></label>
                                    </td>
                                    <td style="padding-top: 5px;">
                                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                                        </asp:ScriptManager>
                                        <asp:TextBox ID="txtDate" runat="server" class="small not-edit" Height="23"></asp:TextBox>
                                        <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtDate"
                                            PopupButtonID="imgCalender" />
                                        <asp:Image ID="imgCalender" ImageUrl="~/images/calendar.png" runat="server" Width="20px"
                                            Height="20px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 15px; padding-left: 250px" valign="top">
                                        <label>
                                            Description<strong style="color: Red">*</strong></label>
                                    </td>
                                    <td style="width: 20px">
                                        <label>
                                            <strong>:</strong></label>
                                    </td>
                                    <td style="padding-top: 5px;">
                                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" 
                                            CssClass="large" Rows="8" Width="350px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-left: 100px">
                                    </td>
                                    <td style="width: 20px">
                                    </td>
                                    <td style="padding-top: 5px; padding-top: 15px">
                                        <asp:Button ID="btnRegister" runat="server" Text="Submit" OnClick="btnRegister_Click"
                                            TabIndex="13" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" align="center" style="padding-top: 20px">
                                        <asp:GridView ID="gdvNews" OnRowCommand="gdvNews_RowCommand" PageSize="5" AllowPaging="True"
                                            runat="server" AutoGenerateColumns="False" HeaderStyle-HorizontalAlign="Left"
                                            OnPageIndexChanged="gdvNews_PageIndexChanged" 
                                            OnPageIndexChanging="gdvNews_PageIndexChanging" OnRowDeleting="gdvNews_RowDeleting"
                                            OnRowEditing="gdvNews_RowEditing" BackColor="White" BorderColor="#999999" 
                                            BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
                                            GridLines="Vertical">
                                            <Columns>
                                                <asp:TemplateField ItemStyle-Width="40px">
                                                    <ItemTemplate>
                                                        <span onclick="return confirm('Are you sure to Edit')">
                                                            <asp:ImageButton ID="imgEdit" runat="server" CommandArgument='<%# Eval("NewsID") %>'
                                                                ImageUrl="~/images/user_edit.png" CommandName="Edit" Width="16px" Height="16px" />
                                                        </span>
                                                    </ItemTemplate>
                                                    <ItemStyle Width="40px" />
                                                </asp:TemplateField>
                                                 <asp:TemplateField ItemStyle-Width="40px">
                                                    <ItemTemplate>
                                                        <span onclick="return confirm('Are you sure to Delete')">
                                                            <asp:ImageButton ID="imgDelete" runat="server" CommandArgument='<%# Eval("NewsID") %>'
                                                                ImageUrl="~/images/icn_alert_error.png" CommandName="Delete" Width="16px" Height="16px" />
                                                        </span>
                                                    </ItemTemplate>
                                                     <ItemStyle Width="40px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Title" ControlStyle-Width="150px" ItemStyle-VerticalAlign="Middle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ControlStyle Width="150px" />
                                                    <ItemStyle VerticalAlign="Middle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Description" ControlStyle-Width="350px" ItemStyle-VerticalAlign="Middle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ControlStyle Width="350px" />
                                                    <ItemStyle VerticalAlign="Middle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="PublishDate" ControlStyle-Width="40px" ItemStyle-VerticalAlign="Middle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Convert.ToDateTime(Eval("PublishDate")).ToShortDateString()%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ControlStyle Width="40px" />
                                                    <ItemStyle VerticalAlign="Middle" />
                                                </asp:TemplateField>
                                            </Columns>
                                            <FooterStyle BackColor="#CCCCCC" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" 
                                                HorizontalAlign="Left" />
                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                        </asp:GridView>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="clear">
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <div class="clear">
        </div>
        </form>
    </div>
</body>
</html>
