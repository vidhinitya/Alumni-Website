<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Facultylogin.aspx.cs" Inherits="Facultylogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <title>Login - MBICT Alumni Association</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="description" content="Chandubhai S Patel Institute of Technology Alumni Association" />
        <meta name="keywords" content="expand, form, css3, jquery, animate, width, height, adapt, unobtrusive javascript"/>
		<link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="css/reset.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="css/text.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="css/grid.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="css/layout.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="css/nav.css" media="screen" />
        <%--<link href='http://fonts.googleapis.com/css?family=Belgrano' rel='stylesheet' type='text/css' />--%>
        <script src="js/cufon-yui.js" type="text/javascript"></script>
		<script src="js/ChunkFive_400.font.js" type="text/javascript"></script>
		<script type="text/javascript">
			Cufon.replace('h1',{ textShadow: '1px 1px #fff'});
			Cufon.replace('h2',{ textShadow: '1px 1px #fff'});
			Cufon.replace('h3',{ textShadow: '1px 1px #000'});
			Cufon.replace('.back');
		</script>
    </head>
    <body>
        <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" ScriptMode="Inherit" ></asp:ScriptManager>
        <div class="container_12" style="background:#f8f8f8; min-height:635px">
            <table width="900">
                <tr>
                    <td style="padding-top:20px; padding-left:20px">
                        <img src="images/mb1.png" alt="Logo" />
                    </td>
                    <td style="padding-top:30px; vertical-align:top">
                        <h4 style="margin:5px 0 0 20px; padding:0; text-align:center; font-size:24px;color:#325571;font-family: 'Belgrano', serif;" >Madhuben and Bhanubhai Patel Institute of Technology Alumni Association</h4>
                    </td>
                </tr>
            </table>
               <div class="clear">
        </div>
        <div class="grid_12">
            <ul class="nav main">
              
                <li class="ic-form-style"><a href="Register.aspx"><span>Alumini / Student Registration</span></a></li>
                 <li class="ic-grid-tables"><a href="Login.aspx"><span>Alumini / Student Login</span></a></li>
                <li class="ic-grid-tables"><a href="Facultylogin.aspx"><span>Faculty / Department Login</span></a></li>
                <li class="ic-grid-tables"><a href="Headlogin.aspx"><span>Admin Login</span></a></li>
                <li class="ic-charts"><a href="Contactus.aspx"><span>Contact Us</span></a></li>
            </ul>
        </div>
        <div class="clear">
        </div>
        <div><br /></div>
            <table width="100%">
                <tr>
                    <td colspan="2">
                        <div class="form_wrapper">
                            <form class="login active">
	                            <h3>Department / Faculty Login</h3>
	                            <asp:UpdatePanel ID="UpdatePanel1"  runat="server" >
                                    <ContentTemplate>
	                                <div style="padding-left:30px;">
                                        <span><asp:Label id="lbllogin" runat="server" ForeColor="Red" Font-Size="14px" Text="* Please Enter Correct Username and Password" Visible="false" Font-Bold="true" /></span>
                                    </div>
	                                <div>
		                                <label>Email ID / UserName:</label>
		                                <asp:TextBox ID="txtEmailLogin" runat="server" class="texytype" TabIndex="11"></asp:TextBox>
		                            </div>
	                                <div>
		                                <label>Password: <a href="Forgotpassword.aspx" rel="forgot_password" class="forgot">Forgot your password?</a></label>
		                                <asp:TextBox ID="txtPasswordLogin" runat="server" class="texytype" TextMode="Password" TabIndex="12"></asp:TextBox>
	                                </div>
	                                <div class="bottom">
		                                <div class="remember"><input type="checkbox" /><span>Keep me logged in</span></div>
		                                <asp:Button ID="btnLogin" runat="server" Text="Login" onclick="btnLogin_Click" TabIndex="13" />
		                                <a rel="register" class="linkform" >For Registration Contact To Administration</a>
		                                <div class="clear"></div>
	                                </div>
	                                </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="btnLogin"/>
                                    </Triggers>
                                </asp:UpdatePanel>
	                        </form>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        </form>
	</body>
</html>