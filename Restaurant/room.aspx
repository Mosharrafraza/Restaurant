<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="room.aspx.cs" Inherits="Restaurant.room" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Room Details</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            color: #333;
        }

        #form1 div {
            margin: 20px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        h1 {
            color: #007bff;
        }

        .grid-view {
            width: 100%;
            border-collapse: collapse;
        }

        .grid-view th, .grid-view td {
            padding: 8px;
            border: 1px solid #ddd;
            text-align: left;
        }

        .grid-view th {
            background-color: #007bff;
            color: #ffffff;
        }

        .grid-view tr:nth-child(even) {background-color: #f2f2f2;}

        .button {
            padding: 10px 20px;
            color: #fff;
            border: none;
            cursor: pointer;
            margin: 5px;
        }

        .home-button {
            background-color: #007bff; 
        }

        .logout-button {
            background-color: #ff4d4d; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome <%= Session["Login"] %></h1>
            <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="button logout-button" onClick="btnHome_Click" />
            <asp:GridView ID="GridView1" runat="server" CssClass="grid-view">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
