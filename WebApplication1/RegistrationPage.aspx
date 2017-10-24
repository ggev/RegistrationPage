<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="WebApplication1.RegistrationPage" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 1000px;
        }
        .auto-style4 {
            height: 23px;
            width: 1000px;
            text-align: right;
        }
        .auto-style5 {
            width: 1000px;
            text-align: right;
        }
        .auto-style6 {
            width: 187px;
        }
        .auto-style7 {
            height: 23px;
            width: 187px;
        }
        .auto-style8 {
            width: 187px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="LabelName" runat="server" Font-Bold="True" Font-Names="Candara" ForeColor="#999999" Text="Name:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TBName" runat="server" Height="25px" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TBName" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="LabelSurname" runat="server" Font-Bold="True" Font-Names="Candara" ForeColor="#999999" Text="Surname:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TBSurname" runat="server" Height="25px" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TBSurname" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="LabelEmail" runat="server" Font-Bold="True" Font-Names="Candara" ForeColor="#999999" Text="Email:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TBEmail" runat="server" Height="25px" Width="180px" />

                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TBEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:Label ID="LabelErrorMassage" runat="server" Font-Bold="False" ForeColor="Red" Text="Email already exist" Visible="False"></asp:Label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TBEmail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter the valid email</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="LabelBirthday" runat="server" Font-Bold="True" Font-Names="Candara" ForeColor="#999999" Text="Birthday:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TBBirthday" runat="server" Height="25px" Width="180px" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TBBirthday" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="LabelPass" runat="server" Font-Bold="True" Font-Names="Candara" ForeColor="#999999" Text="Password:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TBPass" runat="server" Height="25px" TextMode="Password" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TBPass" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="LabelCpass" runat="server" Font-Bold="True" Font-Names="Candara" ForeColor="#999999" Text="Compare Password:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TBCpass" runat="server" Height="25px" TextMode="Password" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TBCpass" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TBPass" ControlToValidate="TBCpass" ErrorMessage="CompareValidator" ForeColor="Red">Both password must be same</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="Button_Submit" runat="server" Height="30px" Text="Submit" Width="100px" OnClick="Button_Submit_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
