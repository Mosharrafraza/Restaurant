<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration_Page.aspx.cs" Inherits="Restaurant.Registration_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Registration</title>
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

        .auto-style2 {
            text-align: right;
            color: #495057;
            font-weight: 500;
        }

        input[type="text"], input[type="password"], input[type="number"], input[type="email"], select, textarea {
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

        .RequiredFieldValidator, .CompareValidator {
            color: #dc3545;
            margin-left: 5px;
            font-size: 0.875rem;
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
        <table>
            <caption>Hotel User Registration</caption>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="First Name Can't left empty" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Last Name can't left empty" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="UserName:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="username is required for registration" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Password Is Required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Confirm Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Confirm password required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Password must be matched" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Phone:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="phone required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Address:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="Address required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" Display="Dynamic" ErrorMessage="Email required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label10" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="rbMale" runat="server" GroupName="gnder" Text="Male" />
                    <asp:RadioButton ID="rbFemale" runat="server" GroupName="gnder" Text="Female" ValidationGroup="gnder" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label11" runat="server" Text="Language:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="rbHindi" runat="server" GroupName="lng" Text="HINDI" />
                    <asp:RadioButton ID="rbtelugu" runat="server" GroupName="lng" Text="TELUGU" />
                    <asp:RadioButton ID="rbenglish" runat="server" GroupName="lng" Text="ENGLISH" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label12" runat="server" Text="Country:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>-Select Country-</asp:ListItem>
                        <asp:ListItem>AUSTRALIA</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>AFGANISHTAN</asp:ListItem>
                        <asp:ListItem>RUSSIA</asp:ListItem>
                        <asp:ListItem>INDIA</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label13" runat="server" Text="Age:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox9" runat="server" TextMode="Number" Width="84px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" Display="Dynamic" ErrorMessage="Age required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <div class="footer-buttons">
            <asp:Button ID="Button1" runat="server" Text="Register" Height="35px" CssClass="btn-register" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Reset" Height="35px" CssClass="btn-reset" OnClick="Button2_Click" CausesValidation="false" />
            <asp:Button ID="Button4" runat="server" Text="Login" Height="35px" CssClass="btn-reset" OnClick="Button4_Click" CausesValidation="false" />
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    </form>
</body>
</html>
