<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    $(document).ready(function () {
        setupLeftMenu();
            setSidebarHeight();
        
        });
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
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
                    <li class="ic-charts"><a href="contactus.aspx"><span>Contact Us</span></a></li>
                
            </ul>
        </div>
        <div class="clear">
        </div>
        <div class="grid_11">
            <div class="box round first" style="min-height:400px">
                <h2>IF you have any doubt, you can contact us through following ways : -</h2>
                <div>
                

<table style="margin-top:28px;">
<div>
<tr>
<td>

    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image1" runat="server" Height="123px" ImageUrl="~/images/c2.png" 
        Width="156px" /> 

</td>
<td></td>
<td style="font-size:14px;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Principal:<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Dr.Vithal.N.Kamat<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Advisor:<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Prof.J.C.Panchal
&nbsp;</td>
</tr>
</div>
</table>
<p>
&nbsp;
    &nbsp;</p>
<div>
<table>
<div>
<tr>
<td>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image2" runat="server" Height="104px" ImageUrl="~/images/c1.jpg" 
        Width="145px" />
&nbsp;&nbsp;</td>
<td></td>

<td style="font-size:14px;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Madhuben & Bhanubhai Patel Women ICT College (MBICT),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
P.O.Box No. 8,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Beyond Vithal Udhyog Nagar,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Dist. Anand, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
St. Gujarat,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
India.<br />
<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone Numbers</b> : (+91) 2692-230880, 230824<br />
<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fax Number</b> : (+91) 2692-230823<br />
<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E-mail Add </b>: vk@kvah.in, principal.icctw@gmail.com

</td>

</tr>


</div>

</table>
         </div>
        </div>
        </div>
        <div class="clear">
        </div>
    </div>
        <div class="clear">
        </div>
    
    </div>
    </div>
    </form>
</body>
</html>
