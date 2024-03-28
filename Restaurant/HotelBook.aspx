<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HotelBook.aspx.cs" Inherits="Restaurant.HotelBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            color: #333;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #333;
            text-align: center;
        }

        #form1 {
            margin: 0 auto;
            width: 50%;
        }

        .auto-style1 {
            width: 100%;
        }

        .auto-style1 td {
            padding: 10px;
        }

        .auto-style2 {
            text-align: right;
            width: 122px;
        }

        input[type="text"], input[type="password"], input[type="number"], input[type="email"], select, textarea {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 10px;
            display: inline-block;
            border: 1px solid #ced4da;
            border-radius: 4px;
            box-sizing: border-box;
            transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        }

        input[type="text"]:focus, input[type="password"]:focus, input[type="number"]:focus, input[type="email"]:focus, select:focus, textarea:focus {
            border-color: #80bdff;
            outline: 0;
            box-shadow: 0 0 0 0.2rem rgba(0,123,255,.25);
        }

        input[type="submit"] {
            font-weight: 500;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: transform 0.3s ease, background-color 0.3s ease;
            background-color: #007bff;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
        .auto-style3 {
            margin-left: 65px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Welcome <%=Session["login"] %></h1>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="username" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Room type:"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="room" Text="Deluxe" />
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="room" Text="Ordinary" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Amenities:"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="AC" />
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Computer" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
                    &nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Previous Booking Data" CssClass="auto-style3" Onclick="Button2_Click" Width="325px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
