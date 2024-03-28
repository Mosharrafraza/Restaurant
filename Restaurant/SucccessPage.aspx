<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SucccessPage.aspx.cs" Inherits="Restaurant.SucccessPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Success</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet" />
    <style type="text/css">
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f0f0f0; 
            color: #333;
            padding: 20px;
        }

        .success-message {
            text-align: center;
            margin-top: 50px;
        }

        .registration-text {
            font-size: 24px; 
            font-weight: 600;
            margin-bottom: 20px;
        }

        .login-button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
            transition: transform 0.3s ease, background-color 0.3s ease;
        }

        .login-button:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="success-message">
            <div class="registration-text">Registration Successful!</div>
            <p>Your registration has been completed successfully.</p>
            <p>Please proceed to login:</p>
            <asp:HyperLink ID="LoginLink" runat="server" CssClass="login-button" NavigateUrl="LoginPage.aspx">Login</asp:HyperLink>
        </div>
    </form>
</body>
</html>
