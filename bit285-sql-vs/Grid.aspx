<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Grid.aspx.cs" Inherits="Grid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="padding: 25px; background-image: url('http://localhost:57526/stardust.png'); width: auto; height: auto; border-spacing: 12px; text-align: center;">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="sdsRegistration" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" BorderColor="#009999" BorderWidth="20px" BorderStyle="Inset" CellPadding="10" GridLines="None">
                        <AlternatingRowStyle BackColor="#A0A0C0" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                        </Columns>
                        <HeaderStyle BackColor="#4A4A71" ForeColor="Fuchsia" />
                        <RowStyle BackColor="#8787AF" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="sdsRegistration" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [UserData]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
