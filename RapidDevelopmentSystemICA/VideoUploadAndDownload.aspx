<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VideoUploadAndDownload.aspx.cs" Inherits="VideoDownload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   
      <table style="font-family:Arial">
    <tr>
        <td colspan="2" style="width:800px; height:80px; background-color:#ccffcc; 
            text-align:center">
            <h1 class="auto-style1">
                For Video Upload and Download&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Size="X-Large" NavigateUrl="~/VideoGallery.aspx">ToVideoGallery</asp:HyperLink>
            </h1>
        </td>
    </tr>
    <tr>
        <td style="height:500px; background-color:#ccffff; width:1800px; vertical-align:top">
                
            <div style="font-family:Arial">
            <br />
            <br />
            <asp:FileUpload ID="FileUpload2" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="UploadVideo" />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server">HyperLink</asp:HyperLink>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowCommand="GridView1_RowCommand" width="1200px">
                <Columns>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Name") %>' CommandName="Download" Text='<%# Eval("Name") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Size" HeaderText="Size" />
                    <asp:BoundField DataField="VideoPath" HeaderText="VideoPath" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Default.aspx">Back To Dynamic Data Site</asp:HyperLink>
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


