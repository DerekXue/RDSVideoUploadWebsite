<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   
      <table style="font-family:Arial">
    <tr>
        <td colspan="2" style="width:800px; height:80px; background-color:#ccffcc; 
            text-align:center">
            <h1>
                Login Page</h1>
        </td>
    </tr>
    <tr>
        <td style="height:500px; background-color:#ccffff; width:1800px; vertical-align:top" >
                
            <div>
            <asp:Login ID="Login1" runat="server" Height="247px" OnAuthenticate="Login1_Authenticate" Width="443px">
            </asp:Login>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">New User Registration</asp:HyperLink>
            </div>

        </td>
    </tr>
    <tr>
        <td colspan="2" style="background-color:#ccffcc; text-align:center">
            &nbsp;</td>
    </tr>
</table>


    </form>
</body>
</html>


