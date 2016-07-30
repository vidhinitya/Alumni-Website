<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentlistadmin.aspx.cs" Inherits="studentlistadmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                          
                            <td style="vertical-align: middle; text-align: right; width: 84px;">
                             <asp:Label ID="lbltop" runat="server" Font-Bold="true" Font-Size="14px"></asp:Label>
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
                <li class="ic-form-style"><a href="AddEditAdmin.aspx"><span>Create Department / Faculty User</span></a></li>
                <li class="ic-grid-tables"><a href="AddEditNews.aspx"><span>News Master</span></a></li>
                <li class="ic-grid-tables"><a href="studentlistadmin.aspx"><span>Student Master</span></a></li>
                
               
            </ul>
        </div>
     
        <div class="clear">
        </div>
        
                <div class="grid_11">
                    <div class="box round first" style="min-height: 400px">
                        <h2>
                            Student Master</h2>
                        <div class="block">
                            <table width="100%" style="padding: 0 10px 30px 10px; font-size: 13px;">
                              
                            
                              
                              
                             
                                <tr>
                                    <td colspan="3" align="left" style="padding-top: 20px">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                                            CellPadding="3" ForeColor="Black" GridLines="Vertical">
                                        <Columns>
                                         <asp:BoundField DataField="Name" HeaderText="Name" InsertVisible="False" ReadOnly="True"
                                            SortExpression="Name" ItemStyle-Width="200px" >
                                            <ItemStyle Width="200px"></ItemStyle>
                                            </asp:BoundField>
                                          <asp:BoundField DataField="Email" HeaderText="Email / USername" InsertVisible="False" ReadOnly="True"
                                            SortExpression="Email" ItemStyle-Width="200px" >
                                            <ItemStyle Width="200px"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Pass" HeaderText="Password" InsertVisible="False" ReadOnly="True"
                                            SortExpression="Pass" ItemStyle-Width="200px" >
                                        <ItemStyle Width="200px"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" InsertVisible="False" ReadOnly="True"
                                            SortExpression="Mobile" ItemStyle-Width="200px" >
                                        <ItemStyle Width="200px"></ItemStyle>
                                        </asp:BoundField>
                                         <asp:BoundField DataField="ClgID" HeaderText="College ID" SortExpression="ClgID"
                                            ItemStyle-Width="200px" >
<ItemStyle Width="200px"></ItemStyle>
                                        </asp:BoundField>
                                        </Columns>
                                            <FooterStyle BackColor="#CCCCCC" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
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
         
        <div class="clear">
        </div>
        </form>
    </div>
</body>
</html>
