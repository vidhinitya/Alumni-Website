<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Gallery_CV.aspx.cs" Inherits="_Default" %>

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
    <link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />
    <%--<link href='http://fonts.googleapis.com/css?family=Belgrano' rel='stylesheet' type='text/css' />--%>
    
    <script src="js/jquery-1.6.4.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery-ui/jquery.ui.core.min.js"></script>
    <script src="js/jquery-ui/jquery.ui.widget.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui/jquery.ui.accordion.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui/jquery.effects.core.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui/jquery.effects.slide.min.js" type="text/javascript"></script>
    
    <script src="js/pretty-photo/jquery.prettyPhoto.js" type="text/javascript"></script>

    <!-- END: load jquery -->
    
    <script src="js/setup.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(document).ready(function () {
        setupPrettyPhoto();
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
                            <td style="vertical-align:top" >
                                <h2 style="margin:5px 0 0 20px; padding:0; text-align:justify; font-size:23px;color:#325571;font-family: 'Belgrano', serif; font-weight:normal" >Madhuben and Bhanubhai Patel Institute of Technology Alumni Association</h2>
                            </td>
                        </tr>
                    </table>
                </div>
                <div> 
                    <table width="430px" style="margin:0;" cellpadding="-1" cellspacing="-1">
                        <tr>
                           
                            <td style="vertical-align:middle; text-align:right; width:84px" >
                               <h5>Welcome!</h5> <asp:Label ID="lbltop" runat="server" Font-Bold="true" Font-Size="14px" ></asp:Label>             
                            </td>
                            <td style="vertical-align:middle; text-align:center; width:92px; padding-top:5px" >
                                <asp:Button ID="logout" runat="server" Text="Logout" OnClick="Logout_Click" CssClass="btn-black" ForeColor="White" Font-Bold="true" />
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
        <div class="grid_3">
            <div class="box sidemenu">
                <div class="block" id="section-menu">
                    <ul class="section menu" style=" border-right:solid 1px #9BA0AF; border-top:solid 1px #9BA0AF; border-bottom:solid 1px #9BA0AF">
                        <li><a class="menuitem">Department</a>
                            <ul class="submenu">
                                <li><a href="Gallery_CE.aspx">Computer Engg.</a> </li>
                                <li><a href="Gallery_IT.aspx">Information Technology</a> </li>
                                <li><a href="Gallery_EC.aspx">Electroics & Communication</a> </li>
                                <li><a href="Gallery_EE.aspx">Electrical Engg.</a> </li>
                                <li><a href="Gallery_ME.aspx">Mechanical Engg.</a> </li>
                                <li><a href="Gallery_CV.aspx">Civil Engg.</a> </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="grid_9">
            <div class="box round first" style="min-height:400px;">
                <h2>IF you have any doubt, you can contact us through following ways : -</h2>
                    <ul class="prettygallery clearfix">
                        <li><a href="img/pretty-photo/fullscreen/item2-full.jpg" rel="prettyPhoto[gallery2]" title="Description on a single line.">
                            <img src="img/pretty-photo/thumbnails/item2.jpg"  alt="" height="148" /></a></li>
                            
                        <li><a href="img/pretty-photo/fullscreen/item3-full.png" rel="prettyPhoto[gallery2]">
                            <img src="img/pretty-photo/thumbnails/item3.jpg"  alt="" height="148" /></a></li>
                            
                        <li><a href="img/pretty-photo/fullscreen/item4-full.png" rel="prettyPhoto[gallery2]">
                            <img src="img/pretty-photo/thumbnails/item4.jpg"  alt="" height="148" /></a></li>
                            
                        <li><a href="img/pretty-photo/fullscreen/item5-full.png" rel="prettyPhoto[gallery2]">
                            <img src="img/pretty-photo/thumbnails/item5.jpg"  alt="" height="148" /></a></li>
                            
                        <li><a href="img/pretty-photo/fullscreen/item6-full.png" rel="prettyPhoto[gallery2]">
                            <img src="img/pretty-photo/thumbnails/item6.jpg"  alt="" height="148" /></a></li>
                            
                        <li><a href="img/pretty-photo/fullscreen/item7-full.png" rel="prettyPhoto[gallery2]">
                            <img src="img/pretty-photo/thumbnails/item7.jpg"  alt="" height="148" /></a></li>
                            
                            
                        <li><a href="img/pretty-photo/fullscreen/item8-full.png" rel="prettyPhoto[gallery2]">
                            <img src="img/pretty-photo/thumbnails/item8.jpg"  alt="" height="148" /></a></li>
                            
                        <li><a href="img/pretty-photo/fullscreen/item9-full.png" rel="prettyPhoto[gallery2]">
                            <img src="img/pretty-photo/thumbnails/item9.jpg"  alt="" height="148" /></a></li>
                            
                        <li><a href="img/pretty-photo/fullscreen/item10-full.png" rel="prettyPhoto[gallery2]">
                            <img src="img/pretty-photo/thumbnails/item10.jpg"  alt="" height="148" /></a></li>
                            
                        <li><a href="img/pretty-photo/fullscreen/item11-full.png" rel="prettyPhoto[gallery2]">
                            <img src="img/pretty-photo/thumbnails/item11.jpg"  alt="" height="148" /></a></li>
                            
                        <li><a href="img/pretty-photo/fullscreen/item12-full.png" rel="prettyPhoto[gallery2]">
                            <img src="img/pretty-photo/thumbnails/item12.jpg"  alt="" height="148" /></a></li>
                            
                        <li><a href="img/pretty-photo/fullscreen/item13-full.png" rel="prettyPhoto[gallery2]">
                            <img src="img/pretty-photo/thumbnails/item13.jpg"  alt="" height="148" /></a></li>
                            
                    </ul>
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
