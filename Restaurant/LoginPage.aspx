<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Restaurant.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet" />
    <style type="text/css">
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #e9ecef;
            color: #333;
            padding: 20px;
        }

        table {
            width: 100%;
            max-width: 640px;
            margin: 40px auto;
            background-color: #ffffff;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        td {
            padding: 5px;
            vertical-align: middle;
        }

        input[type="text"], input[type="password"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 10px;
            display: inline-block;
            border: 1px solid #ced4da;
            border-radius: 4px;
            box-sizing: border-box;
            transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
        }

        input[type="submit"], input[type="reset"] {
            font-weight: 500;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: transform 0.3s ease, background-color 0.3s ease;
        }

        input[type="submit"] {
            background-color: #007bff;
        }

        input[type="reset"] {
            background-color: #dc3545;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            transform: scale(1.05);
        }

        .footer-buttons {
            text-align: center;
            margin-top: 17px;
        }

        .ValidationSummary {
            margin-top: 20px;
            color: #721c24;
            background-color: #f8d7da;
            border-color: #f5c6cb;
            padding: 10px;
            border-radius: 4px;
            box-shadow: 0 0 10px rgba(0,0,0,.1);
            max-width: 640px;
            margin: 20px auto;
        }

        caption {
            color: red;
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table>
            <caption>User Login</caption>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="Username is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Password is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
            <div class="footer-buttons">
            <asp:Button ID="btnLogin" runat="server" Text="Login" Height="35px" CssClass="btn-login" OnClick="btnLogin_Click" />
            <asp:Button ID="btnReset" runat="server" Text="Reset" Height="35px" CssClass="btn-reset"  CausesValidation="false" OnClick="btnReset_Click" />
        </div>
        <asp:ValidationSummary ID="ValidationSummaryLogin" runat="server" ForeColor="Red" />
        </div>
    </form>
</body>
</html>
