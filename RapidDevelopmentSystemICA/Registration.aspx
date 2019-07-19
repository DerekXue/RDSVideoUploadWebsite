<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 865px;
            height: 176px;
        }
        .auto-style2 {
            width: 530px;
        }
        .auto-style4 {
            width: 530px;
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
            width: 150px;
        }
        .auto-style8 {
            width: 165px;
        }
        .auto-style9 {
            width: 150px;
        }
        .auto-style10 {
            width: 373px;
            text-align: left;
        }
        .auto-style11 {
            width: 373px;
        }
        .auto-style12 {
            width: 373px;
            height: 23px;
        }
    </style>
</head>
<body style="height: 401px">
    <form id="form1" runat="server">
   
      <table style="font-family:Arial">
    <tr>
        <td colspan="2" style="width:800px; height:80px; background-color:#ccffcc; 
            text-align:center">
            <h1>
                Registration Page</h1>
        </td>
    </tr>
    <tr>
        <td style="height:500px; background-color:#ccffff; width:1800px; vertical-align:top">
                
            <div>
            <table class="auto-style1">
               
                <tr>
                    <td class="auto-style7">User Name</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtUsername" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Pls enter username" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">E-mail</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Pls enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Pls enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Password</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="Pls enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Confirm Password</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="pls confirm password" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Both password must be same" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Country</td>
                    <td class="auto-style11">
                        <asp:DropDownList ID="txtCountry" runat="server">
                            <asp:ListItem>Select Country</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                            <asp:ListItem>China</asp:ListItem>
                            <asp:ListItem>France</asp:ListItem>
                            <asp:ListItem>German</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCountry" ErrorMessage="pls select country" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="152px" />
                        <input id="Reset1" type="reset" value="reset" class="auto-style8" /></td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Back To Login</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>

        </td>
    </tr>
    <tr>
        <td colspan="2" style="background-color:#ccffcc; ">
            &nbsp;</td>
    </tr>
</table>


    </form>
</body>
</html>


