<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Forgotpassword.aspx.cs" Inherits="_Default" %>

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
        <div class="container_12" style="background:#f8f8f8; min-height:635px">
            <table width="900">
                <tr>
                    <td style="padding-top:20px; padding-left:20px">
                        <img src="images/mb1.png" alt="Logo" />
                    </td>
                    <td style="padding-top:20px; vertical-align:top">
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
		                    <form class="forgot_password active" runat="server">
		                    
						        <h3>Forgot Password</h3>
						        
						        <div id="forgot" runat="server">
						        
						        <div>
						            <asp:Label runat="server" id="lblerror" Font-Bold="true" Font-Size="20px"></asp:Label>
						            <label>Email ID:</label>
							        <asp:TextBox ID="txtEmailRegister" runat="server" class="texttype" TabIndex="10" ></asp:TextBox>
						        </div>
						        
						        <div>
							        <label>Please select your security Question:</label>
							        <asp:DropDownList ID="ddlQuest" runat="server" Width="370" Height="40px" CssClass="texttype" TabIndex="11">
							            <asp:ListItem >Select one</asp:ListItem>
                                        <asp:ListItem >What is the name of of your first childhood friend?</asp:ListItem>
                                        <asp:ListItem >What is the title of your favourite book?</asp:ListItem>
                                        <asp:ListItem >What was your all time favourite cartoon character?</asp:ListItem>
                                        <asp:ListItem >What is the name of first company/organization you worked for?</asp:ListItem> 
                                    </asp:DropDownList>
						        </div>
						        
						        <div>
							        <label>Answer:</label>
							        <asp:TextBox ID="txtAnswer" runat="server" class="texttype" TabIndex="12" TextMode="Password"></asp:TextBox>
							    </div>
						        
						        </div>
						        
						        <div id="remember" runat="server" visible="false">
						        
						        <div align="center">
						            <br />
						            <br />
							        <asp:Label runat="server" id="lblPassword" Font-Bold="true" Font-Size="20px"></asp:Label>
							        <br />
							        <br />
							    </div>
						        
						        </div>
						        
						        <div class="bottom">
							        <asp:Button ID="btnRegister" runat="server" Text="Get Password" onclick="btnForgot_Click" TabIndex="13" />
							        <a href="Login.aspx" rel="login" >Suddenly remebered? Log in here</a>
							        <a href="Register.aspx" rel="register" >You don't have an account? Register here</a>
							        <div class="clear"></div>
						        </div>
					        </form>
					    </div>
                    </td>
                </tr>
            </table>
        </div>
	</body>
</html>