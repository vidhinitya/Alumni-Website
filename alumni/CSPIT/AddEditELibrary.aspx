<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddEditELibrary.aspx.cs"
    Inherits="AddEditELibrary" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="head1">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>MBICT Alumni Faculty Administration</title>
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
                           
                            <td style="vertical-align: middle; text-align: right; width: 260px">
                               <asp:Label ID="lbltop" runat="server" Font-Bold="true" Font-Size="14px"></asp:Label>
                            </td>
                            <td style="vertical-align: middle; text-align: left; width: 80px; padding-top: 5px">
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
               
                <li class="ic-grid-tables"><a href="AddEditELibrary.aspx"><span>E Library Master</span></a></li>
                <li class="ic-grid-tables"><a href="studentlistfaculty.aspx"><span>Student Master</span></a></li>
                 <li class="ic-form-style"><a href="AddEditFaculty.aspx"><span>Faculty / Department Profile</span></a></li>
               
            </ul>
        </div>
          <div class="clear">
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="grid_11">
                    <div class="box round first" style="min-height: 400px">
                        <h2>
                            ELibrary Form :-</h2>
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
                                            ELibrary Title<strong style="color: Red">*</strong></label>
                                    </td>
                                    <td style="width: 20px">
                                        <label>
                                            <strong>:</strong></label>
                                    </td>
                                    <td style="padding-top: 5px;">
                                        <asp:TextBox ID="txtEDocTitle" runat="server" class="small" Height="23"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 15px; padding-left: 250px">
                                        <label>
                                            Upload File <strong style="color: Red">*</strong></label>
                                    </td>
                                    <td style="width: 20px">
                                        <label>
                                            <strong>:</strong></label>
                                    </td>
                                    <td style="padding-top: 5px;">
                                        <asp:FileUpload ID="flpEDocFile" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 15px; padding-left: 250px">
                                        <label>
                                            Department Of Graduation<strong style="color: Red">*</strong></label>
                                    </td>
                                    <td style="width: 20px">
                                        <label>
                                            <strong>:</strong></label>
                                    </td>
                                    <td style="padding-top: 5px;">
                                        <div class="form_wrapper">
                                            <asp:DropDownList ID="ddlDepartmentID" runat="server" Width="207" Height="40px" CssClass="texttype"
                                                TabIndex="11">
                                            </asp:DropDownList>
                                        </div>
                                    </td>
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
                                        <asp:GridView ID="gdvEdoc" OnRowCommand="gdvEdoc_RowCommand" PageSize="10" AllowPaging="True"
                                            runat="server" AutoGenerateColumns="False" HeaderStyle-HorizontalAlign="Left"
                                            OnPageIndexChanged="gdvEdoc_PageIndexChanged" OnPageIndexChanging="gdvEdoc_PageIndexChanging"
                                            OnRowDeleting="gdvEdoc_RowDeleting" OnRowEditing="gdvEdoc_RowEditing" 
                                            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                                            CellPadding="3" ForeColor="Black" GridLines="Vertical">
                                            <Columns>
                                                <%--  <asp:TemplateField ItemStyle-Width="40px">
                                                    <ItemTemplate>
                                                        <span onclick="return confirm('Are you sure to Edit')">
                                                            <asp:ImageButton ID="imgEdit" runat="server" CommandArgument='<%# Eval("EDocID") %>'
                                                                ImageUrl="~/images/user_edit.png" CommandName="Edit" Width="16px" Height="16px" />
                                                        </span>
                                                    </ItemTemplate>
                                                </asp:TemplateField>--%>
                                                <asp:TemplateField ItemStyle-Width="40px">
                                                    <ItemTemplate>
                                                        <span onclick="return confirm('Are you sure to Delete')">
                                                            <asp:ImageButton ID="imgDelete" runat="server" CommandArgument='<%# Eval("EDocID") %>'
                                                                ImageUrl="~/images/icn_alert_error.png" CommandName="Delete" Width="16px" Height="16px" />
                                                        </span>
                                                    </ItemTemplate>
                                                    <ItemStyle Width="40px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Title" ControlStyle-Width="150px" ItemStyle-VerticalAlign="Middle">
                                                    <ItemTemplate>
                                                        <a href='<%#setImage(Eval("UploadFileName").ToString()) %>' style="text-decoration: underline;"
                                                            title="View ELibrary Document">
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("EDocTitle") %>'></asp:Label></a>
                                                    </ItemTemplate>
                                                    <ControlStyle Width="150px" />
                                                    <ItemStyle VerticalAlign="Middle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Department Name" ControlStyle-Width="150px" ItemStyle-VerticalAlign="Middle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("DepartmentName") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ControlStyle Width="150px" />
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
            <Triggers>
                <asp:PostBackTrigger ControlID="btnRegister" />
            </Triggers>
        </asp:UpdatePanel>
        <div class="clear">
        </div>
        </form>
    </div>
</body>
</html>
