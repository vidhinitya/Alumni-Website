<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Register.aspx.cs" Inherits="_Default" %>

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
        <script type="text/javascript" src="js/html5.js"></script>
        <%--<link href='http://fonts.googleapis.com/css?family=Belgrano' rel='stylesheet' type='text/css' />--%>
		<%--<script src="js/cufon-yui.js" type="text/javascript"></script>
		<script src="js/ChunkFive_400.font.js" type="text/javascript"></script>
		<script type="text/javascript">
			Cufon.replace('h1',{ textShadow: '1px 1px #fff'});
			Cufon.replace('h2',{ textShadow: '1px 1px #fff'});
			Cufon.replace('h3',{ textShadow: '1px 1px #000'});
			Cufon.replace('.back');
		</script>--%>
    </head>
    <body>
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
        <div class="wrapper" style="margin:0;">
		    <div>
		        <div class="form_wrapper">
		            <form class="register active" runat="server">
		            <asp:ScriptManager ID="ScriptManager1" runat="server" ScriptMode="Inherit" ></asp:ScriptManager>
						<h3>Student / Alumini Registration</h3>
						<asp:UpdatePanel ID="UpdatePanel1"  runat="server" >
                            <ContentTemplate>
                                <div style="padding-left:30px;">
                                    <span><asp:Label id="lblRegister" runat="server" ForeColor="Red" Font-Size="14px" Text="" Visible="false" Font-Bold="true" /></span>
                                </div>
						        <div class="column">
						            <div>
								        <label>Email ID:</label>
								        <asp:TextBox ID="txtEmailRegister" runat="server" class="texttype" TabIndex="10" ></asp:TextBox>
                                        <asp:RegularExpressionValidator runat="server" ID="rev" ControlToValidate="txtEmailRegister" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Please enter valid email!"></asp:RegularExpressionValidator>
							        </div>
							        <div>
								        <label>Password:</label>
								        <asp:TextBox ID="txtPasswordRegister" runat="server" class="texttype" TabIndex="12" TextMode="Password"></asp:TextBox>
								    </div>
							        <div>
								        <label>Security Question:</label>
								        <asp:DropDownList ID="ddlQuest" runat="server" Width="207" Height="40px" CssClass="texttype" TabIndex="14">
								            <asp:ListItem >Select one</asp:ListItem>
                                            <asp:ListItem >What is the name of of your first childhood friend?</asp:ListItem>
                                            <asp:ListItem >What is the title of your favourite book?</asp:ListItem>
                                            <asp:ListItem >What was your all time favourite cartoon character?</asp:ListItem>
                                            <asp:ListItem >What is the name of first company/organization you worked for?</asp:ListItem> 
                                        </asp:DropDownList><br />
                                        
							        </div>
						        </div>
						        <div class="column">
							        <div>
								        <label>Department Of Graduation:</label>
								        <asp:DropDownList ID="ddlDepartmentID" runat="server" Width="207" Height="40px" CssClass="texttype" TabIndex="11"></asp:DropDownList>
							        </div>
							        <div style="margin-top:31px;">
								        <label>Confirm Password:</label>
								        <asp:TextBox ID="txtConfPasswordRegister" runat="server" class="texttype" TabIndex="13" TextMode="Password"></asp:TextBox>
								    </div>
							        <div>
								        <label>Answer:</label>
								        <asp:TextBox ID="txtAnswer" runat="server" class="texttype" TabIndex="15" ></asp:TextBox><br />
							        </div>
						        </div>
						        <div class="bottom">
							        <%--<div class="remember">
								        <input type="checkbox" />
								        <span>Send me updates</span>
							        </div>--%>
							        <asp:Button ID="btnRegister" runat="server" Text="Register" onclick="btnRegister_Click" TabIndex="16" />
							        <a href="Login.aspx" rel="login">You have an account already? Log in here</a>
							        <div class="clear"></div>
						        </div>
						    </ContentTemplate>
						    <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="btnRegister"/>
                            </Triggers>
                        </asp:UpdatePanel>
                        
                        
                        <asp:Label ID="lblName" runat="server" Text=" " Visible="false"></asp:Label>
                        <asp:Label ID="lblAddress" runat="server" Text=" " Visible="false"></asp:Label>
                        <asp:Label ID="lblCity" runat="server" Text=" " Visible="false"></asp:Label>
                        <asp:Label ID="lblAEmail" runat="server" Text=" " Visible="false"></asp:Label>
                        <asp:Label ID="lblMobile" runat="server" Text=" " Visible="false"></asp:Label>
                        <asp:Label ID="lblClgID" runat="server" Text=" " Visible="false"></asp:Label>
                        <asp:Label ID="lblYOA" runat="server" Text="Select One" Visible="false"></asp:Label>
                        <asp:Label ID="lblYOG" runat="server" Text="Select One" Visible="false"></asp:Label>
                        <asp:Label ID="lblPercentage" runat="server" Text=" " Visible="false"></asp:Label>
                        <asp:Label ID="lblEntrance" runat="server" Text="Select One" Visible="false"></asp:Label>
                        <asp:Label ID="lblOExam" runat="server" Text=" " Visible="false"></asp:Label>
                        <asp:Label ID="lblObtained" runat="server" Text=" " Visible="false"></asp:Label>
                        <asp:Label ID="lblOutof" runat="server" Text=" " Visible="false"></asp:Label>
                        <asp:Label ID="lblYOAEdu" runat="server" Text="Select One" Visible="false"></asp:Label>
                        <asp:Label ID="lblYOGEdu" runat="server" Text="Select One" Visible="false"></asp:Label>
                        <asp:Label ID="lblPercentageEdu" runat="server" Text=" " Visible="false"></asp:Label>
                        <asp:Label ID="lblNOI" runat="server" Text=" " Visible="false"></asp:Label>
                        <asp:Label ID="lblNOC" runat="server" Text=" " Visible="false"></asp:Label>
                        <asp:Label ID="lblStatus" runat="server" Text="Select One" Visible="false"></asp:Label>
                        <asp:Label ID="lblPlacement" runat="server" Text="Select One" Visible="false"></asp:Label>
                        <asp:Label ID="lblCompanyname" runat="server" Text=" " Visible="false"></asp:Label>
                        <asp:Label ID="lblCompanytype" runat="server" Text=" " Visible="false"></asp:Label>
                        <asp:Label ID="lblDOJ" runat="server" Text=" " Visible="false"></asp:Label>
                        <asp:Label ID="lblDesignation" runat="server" Text=" " Visible="false"></asp:Label>
                        <asp:Label ID="lblAnnual" runat="server" Text=" " Visible="false"></asp:Label>
                        <asp:Label ID="lblExperience" runat="server" Text="Select One" Visible="false"></asp:Label>
                        <asp:Label ID="lblTeaching" runat="server" Text="Select One" Visible="false"></asp:Label>
                        <asp:Label ID="lblLibrary" runat="server" Text="Select One" Visible="false"></asp:Label>
                        <asp:Label ID="lblLaborartory" runat="server" Text="Select One" Visible="false"></asp:Label>
                        <asp:Label ID="lblSports" runat="server" Text="Select One" Visible="false"></asp:Label>
                        <asp:Label ID="lblHostel" runat="server" Text="Select One" Visible="false"></asp:Label>
                        <asp:Label ID="lblFeed" runat="server" Text="" Visible="false"></asp:Label>
                        
                        
                        
                        
					</form>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	</body>
</html>