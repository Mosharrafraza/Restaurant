<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginSucces.aspx.cs" Inherits="Restaurant.LoginSucces" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
    <style>
        input[type="reset"] {
            font-weight: 500;
            color: red;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: transform 0.3s ease, background-color 0.3s ease;
        }

        input[type="reset"] {
            background-color: wheat;
        }

            input[type="reset"]:hover {
                transform: scale(1.05);
            }

        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        #container {
            width: 80%;
            margin: 0 auto;
            padding-top: 50px;
            text-align: center; 
        }

        h1 {
            text-align: center;
            color: #333;
        }


        #GridView1 {
            border-collapse: collapse;
            width: 100%;
            background-color: #fff;
            border: 1px solid #ddd;
        }

            #GridView1 th,
            #GridView1 td {
                padding: 8px;
                text-align: left;
            }

            #GridView1 th {
                background-color: #007bff;
                color: #fff;
            }

            #GridView1 tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            #GridView1 tr:hover {
                background-color: #ddd;
            }

        .btn-reset {
            font-weight: 500;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: transform 0.3s ease, background-color 0.3s ease;
            background-color: #dc3545;
        }

        .btn-reset:hover {
            transform: scale(1.05);
        }

        .link-below {
            margin-top: 20px;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            <h1>WELCOME <%= Session["Login"] %></h1>
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <br />
            <asp:Button ID="btnLogout" runat="server" Text="LogOut" Height="35px" CssClass="btn-reset" OnClick="btnLogout_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="Blue" BorderColor="White" BorderStyle="Double" Font-Bold="True" Font-Italic="False" Font-Names="Sans Serif Collection" ForeColor="White" Height="35px" OnClick="Button1_Click" Text="click here for hotel registration" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
