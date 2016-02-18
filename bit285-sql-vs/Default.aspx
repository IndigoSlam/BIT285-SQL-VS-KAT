<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #000080;
            background-color: #99CCFF;
        }
        .auto-style2 {
            width: 242px;
        }
        .auto-style3 {
            width: 242px;
            text-align: right;
            font-size: large;
            font-weight: bold;
        }
        .auto-style5 {
            width: 699px;
        }
        .auto-style6 {
            width: 220px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <table class="auto-style1" style="background-color:#CEB7FF; background-image: url('http://localhost:57526/stardust.png'); background-repeat: repeat; color: #A0A0C0; width: 840px;">
            <tr>
                <td style="font-size: x-large; font-weight: bold; color: #A0A0C0; ">Registeration</td>
                <td class="auto-style6"></td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style3">User Name:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtUsername" runat="server" Width="170px" BackColor="#ECD9FF" BorderColor="#CC99FF"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="* User Name is required!" ForeColor="#FFFFCC"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtEmail" runat="server" Width="170px" BackColor="#ECD9FF" BorderColor="#CC99FF"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Email required!" ForeColor="#FFFFCC"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="revValidateEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Valid email address required!" ForeColor="#FFFFCC" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="170px" BackColor="#ECD9FF" BorderColor="#CC99FF"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="* Password is Required!" ForeColor="#FFFFCC"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Confirm Password:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="170px" BackColor="#ECD9FF" BorderColor="#CC99FF"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="* Confirm password required!" ForeColor="#FFFFCC"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="cvComparePasswords" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="* Both passwords must match!" ForeColor="#FFFFCC"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Country:</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="175px">
                        <asp:ListItem>Select Country</asp:ListItem>
                        <asp:ListItem>United States</asp:ListItem>
                        <asp:ListItem>Canada</asp:ListItem>
                        <asp:ListItem>Mexico</asp:ListItem>
                        <asp:ListItem>Winkustan</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ControlToValidate="DropDownList1" ErrorMessage="* Select a country name!" ForeColor="#FFFFCC" InitialValue="Select Country!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="Submit" BackColor="#C0EFEF" BorderColor="#33CCCC" />&nbsp;
                    <asp:Button ID="btnReset" runat="server" CausesValidation="False" OnClick="btnReset_Click" Text="Reset" BackColor="#C0EFEF" BorderColor="#33CCCC" />
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="lblSuccess" runat="server" ForeColor="#FFFFCC" Text="Registration is a success!" Visible="False"></asp:Label>
                    <br />
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <p>Already have an account? 
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" ForeColor="Fuchsia">Login</asp:HyperLink></p>
                </td>
                <td></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
