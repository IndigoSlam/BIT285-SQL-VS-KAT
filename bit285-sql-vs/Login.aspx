<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 122px;
        }
        .auto-style3 {
            width: 170px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width:800%; background-image: url('stardust.png'); background-repeat: repeat; color: #A0A0C0;">
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Login Page" Font-Bold="True" Font-Size="X-Large" ForeColor="#A0A0C0"></asp:Label></td>
                <td class="auto-style3"></td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align:right;"><asp:Label ID="LabelUser" runat="server" Text="User Name: " Font-Bold="True"></asp:Label></td>
                <td class="auto-style3"><asp:TextBox ID="txtLoginUser" runat="server" BackColor="#ECD9FF" Width="145px" BorderColor="#CC99FF"></asp:TextBox></td>
                <td style="color:#FFFFCC;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* User Name Required!" ValidationGroup="LabelUser" Visible="False" ControlToValidate="txtLoginUser" OnDataBinding="btnLogin_Click"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align:right;"><asp:Label ID="LabelPass" runat="server" Text="Password: " Font-Bold="True"></asp:Label></td>
                <td class="auto-style3"><asp:TextBox ID="txtLoginPassword" runat="server" BackColor="#ECD9FF" Width="145px" BorderColor="#CC99FF"></asp:TextBox></td>
                <td style="color:#FFFFCC;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Password Required!" ControlToValidate="txtLoginPassword" OnDataBinding="btnLogin_Click"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#C0EFEF" BorderColor="#33CCCC" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3"><asp:Label ID="lblPasswordStatus" runat="server" ForeColor="#FFFFCC" Text="* Password is incorrect!" Visable="False" OnDataBinding="btnLogin_Click" Visible="False"></asp:Label>
                    <br />
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style3">
                    <p>Don't have an account yet? Register 
                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Fuchsia" NavigateUrl="~/Default.aspx">HERE</asp:HyperLink>.
                    </p>
                </td>
                <td></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
