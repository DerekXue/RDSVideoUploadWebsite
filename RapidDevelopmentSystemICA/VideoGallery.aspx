<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VideoGallery.aspx.cs" Inherits="VideoGallary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 230px;
            background-color: #3366FF;
        }
        .auto-style4 {
            width: 222px;
            height: 40px;
            text-align: center;
        }
        .auto-style5 {
            width: 222px;
            height: 168px;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   
      <table style="font-family:Arial">
    <tr>
        <td colspan="2" style="width:800px; height:80px; background-color:#ccffcc; 
            text-align:center">
            <h1>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Welcome to Video Gallery"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="X-Large" NavigateUrl="~/Login.aspx">To Login</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="X-Large" NavigateUrl="~/Registration.aspx">To Registration</asp:HyperLink>
            </h1>
        </td>
    </tr>
    <tr>
        <td style="height:500px; background-color:#ccffff; width:1800px; vertical-align:top">
                
            <div>
            <br />
            <br />
        </div>
        <div class="auto-style6">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" Height="659px" RepeatColumns="4" RepeatDirection="Horizontal" Width="1157px">
            <ItemTemplate>
                <table border="1" class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("VideoPath") %>'></asp:Literal>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
       
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" SelectCommand="SELECT * FROM [tblVideos]"></asp:SqlDataSource>

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



       