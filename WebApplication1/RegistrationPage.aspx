<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="WebApplication1.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="Content\style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 40px;
        }

        .auto-style2 {
            height: 40px;
            width: 441px;
        }

        .auto-style3 {
            height: 40px;
            width: 441px;
            text-align: center;
        }

        .auto-style4 {
            height: 40px;
            text-align: right;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-inverse fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Portfolio</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Gallery</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="RegistrationPage.aspx?id=login"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div id="content" class="container-fluid">
        <div class="row">
            <div class="col-lg-3">
                <h4>My Blog</h4>
                <ul class="nav nav-pills nav-stacked">
                    <li class="active"><a href="#section1">Home</a></li>
                    <li><a href="#section2">Friends</a></li>
                    <li><a href="#section3">Family</a></li>
                    <li><a href="#section3">Photos</a></li>
                </ul>
            </div>
            <div class="col-lg-9">
                <form id="form1" runat="server">
                    <div runat="server" id="registration_form">
                        <table class="nav-justified" border="0">
                            <tr>
                                <td class="auto-style1"></td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Registration"></asp:Label>
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="LabelName" runat="server" Text="Name:" Font-Names="Candara" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="TextBoxName" runat="server" Height="35px" Width="430px"></asp:TextBox>
                                </td>
                                <td class="auto-style1">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxName" ErrorMessage="RequiredFieldValidator" Font-Size="Medium" ForeColor="White">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="LabelSurname" runat="server" Text="Surname:" Font-Names="Candara" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="TextBoxSurname" runat="server" Height="35px" Width="430px"></asp:TextBox>
                                </td>
                                <td class="auto-style1">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxSurname" ErrorMessage="RequiredFieldValidator" Font-Size="Medium" ForeColor="White">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="LabelEmail" runat="server" Text="Email:" Font-Names="Candara" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="TextBoxEmail" runat="server" Height="35px" Width="430px"></asp:TextBox>
                                </td>
                                <td class="auto-style1">
                                    <asp:Label ID="LabelEmailExist" runat="server" Font-Names="Candara" ForeColor="White" Text="Email already exist" Visible="False"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="RequiredFieldValidator" Font-Size="Medium" ForeColor="White">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="RegularExpressionValidator" ForeColor="White" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Candara">Enter the valid email</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="LabelPassword" runat="server" Text="Password:" Font-Names="Candara" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="TextBoxPassword" runat="server" Height="35px" Width="430px" TextMode="Password"></asp:TextBox>
                                </td>
                                <td class="auto-style1">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="RequiredFieldValidator" Font-Size="Medium" ForeColor="White">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="LabelComPass" runat="server" Text="Compare Password:" Font-Names="Candara" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="TextBoxComPass" runat="server" Height="35px" Width="430px" TextMode="Password"></asp:TextBox>
                                </td>
                                <td class="auto-style1">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxComPass" ErrorMessage="RequiredFieldValidator" Font-Size="Medium" ForeColor="White">*</asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxComPass" ErrorMessage="CompareValidator" ForeColor="White">Both password must be same</asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1"></td>
                                <td class="auto-style3">
                                    <asp:Button ID="ButtonSubmit" runat="server" Height="35px" Text="Submit" Width="160px" OnClick="ButtonSubmit_Click" Font-Bold="True" Font-Size="14pt" />
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                        </table>
                    </div>
                    <div runat="server" id="login_form">
                        <table class="nav-justified" border="0">
                            <tr>
                                <td class="auto-style1"></td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Log In"></asp:Label>
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label5" runat="server" Text="Email:" Font-Names="Candara" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="TextBoxEmailLog" runat="server" Height="35px" Width="430px"></asp:TextBox>
                                </td>
                                <td class="auto-style1">
                                    <asp:Label ID="Label6" runat="server" Font-Names="Candara" ForeColor="White" Text="Email already exist" Visible="False"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="RequiredFieldValidator" Font-Size="Medium" ForeColor="White">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="RegularExpressionValidator" ForeColor="White" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Candara">Enter the valid email</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label7" runat="server" Text="Password:" Font-Names="Candara" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="TextBoxPassLog" runat="server" Height="35px" Width="430px" TextMode="Password"></asp:TextBox>
                                </td>
                                <td class="auto-style1">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="RequiredFieldValidator" Font-Size="Medium" ForeColor="White">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1"></td>
                                <td class="auto-style3">
                                    <asp:Button ID="ButtonSignIn" runat="server" Height="35px" Text="Sign In" Width="160px" Font-Bold="True" Font-Size="14pt" OnClick="ButtonSignIn_Click" />
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                        </table>
                    </div>
                    <div id="success_registration" runat="server" class="text-center">
                        <asp:Label ID="labelSuccessReg" runat="server" Font-Bold="True" Font-Size="25pt">Your Registration is done!</asp:Label>
                    </div>
                    <div id="login_complete" runat="server" class="text-center">
                        <asp:Label ID="labelLoginMessage" runat="server" Font-Bold="True" Font-Size="25pt"></asp:Label>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <footer class="container-fluid  text-center">
        <p>Copyright &copy; My Website 2017</p>
    </footer>

    <script src="Scripts\jquery\jquery.min.js"></script>
    <script src="Scripts\bootstrap\js\bootstrap.bundle.min.js"></script>
</body>
</html>
