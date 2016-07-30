<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <asp:TextBox ID="txtDate" runat="server" class="small" Height="23"></asp:TextBox>
        <cc1:calendarextender id="CalendarExtender1" runat="server" targetcontrolid="txtDate"
            popupbuttonid="imgCalender" />
        <asp:Image ID="imgCalender" ImageUrl="~/images/calendar.png" runat="server" Width="20px"
            Height="20px" />
    </div>
    </form>
</body>
</html>
