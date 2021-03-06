﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddEditFaculty.aspx.cs" Inherits="AddEditFaculty" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>MBICt Alumni Faculty Administration</title>
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
                           
                            <td style="vertical-align: middle; text-align: right; width: 84px">
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
                
                <li class="ic-grid-tables"><a href="AddEditELibrary.aspx"><span>E Library Master</span></a></li>
                <li class="ic-grid-tables"><a href="studentlistfaculty.aspx"><span>Student Master</span></a></li>
                 <li class="ic-form-style"><a href="AddEditFaculty.aspx"><span>Faculty / Department Profile</span></a></li>
               
            </ul>
        </div>
          <div class="clear">
        </div>
        <div class="grid_11">
            <div class="box round first" style="min-height: 400px">
                <h2>
                    Faculty / Department Profile :-</h2>
                <div class="block">
                    <table width="100%" style="padding: 0 10px 30px 10px; font-size: 13px;">
                        <tr>
                            <td colspan="3" align="center">
                                <h6>
                                    Username and password for Administration : -</h6>
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
                                    Admin Name<strong style="color: Red">*</strong></label>
                            </td>
                            <td style="width: 20px">
                                <label>
                                    <strong>:</strong></label>
                            </td>
                            <td style="padding-top: 5px;">
                                <asp:TextBox ID="txtAdminName" runat="server" class="small" Height="23"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="padding-top: 15px; padding-left: 250px">
                                <label>
                                    Password<strong style="color: Red">*</strong></label>
                            </td>
                            <td style="width: 20px">
                                <label>
                                    <strong>:</strong></label>
                            </td>
                            <td style="padding-top: 5px;">
                                <asp:TextBox ID="txtAdminPassword" runat="server" class="small" Height="23"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="padding-top: 15px; padding-left: 250px">
                                <label>
                                    Department<strong style="color: Red">*</strong></label>
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
                        </tr>
                        <tr>
                            <td style="padding-left: 100px">
                            </td>
                            <td style="width: 20px">
                            </td>
                            <td style="padding-top: 5px; padding-top: 15px">
                                <asp:Button ID="btnRegister" runat="server" Enabled="false" Text="Update Faculty" OnClick="btnRegister_Click"
                                    TabIndex="13" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center" style="padding-top: 20px">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AdminID"
                                    DataSourceID="SqlDataSource1" HeaderStyle-HorizontalAlign="Left">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Edit" ControlStyle-Width="40px">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="hlEdit" NavigateUrl='<%# String.Concat("AddEditFaculty.aspx?","AdminID=",Eval("AdminID")) %>'
                                                    runat="server" ForeColor="Black" Font-Underline="false">
                                                    <img src="~/images/user_edit.png" runat="server" id="imgedit" alt="imgedit" class="button white small" />
                                                </asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="AdminID" HeaderText="AdminID" InsertVisible="False" ReadOnly="True"
                                            SortExpression="AdminID" ItemStyle-Width="100px" />
                                        <asp:BoundField DataField="AdminName" HeaderText="AdminName" SortExpression="AdminName"
                                            ItemStyle-Width="100px" />
                                        <asp:BoundField DataField="AdminName" HeaderText="AdminName" SortExpression="AdminName"
                                            ItemStyle-Width="100px" />
                                        <asp:BoundField DataField="DepartmentName" HeaderText="Department Name" SortExpression="Pass"
                                            ItemStyle-Width="100px" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" DataSourceMode="DataReader"
                                    ConnectionString="<%$ ConnectionStrings:TheaterConnectionString%>" SelectCommand="Select  A.*,D.DepartmentName from MST_Admin A Inner Join MST_Department D on A.DepartmentId = D.DepartmentID Where A.AdminID = @AdminID ">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="AdminID" SessionField="AdminID" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
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
