<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AdminLogin.aspx.cs"
    Inherits="ECommerce.Admin.AdminLogin" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Admin Login</title>
    <link href="../CSS/style.css" rel="stylesheet" />
</head>

<body>

<div class="login-page">

    <div class="login-card">

        <div class="logo">🔐</div>

        <h1>Admin Login</h1>

        <p class="welcome">Welcome to Admin Panel</p>

        <form id="form1" runat="server">

            <label>Username</label>

            <input type="text"
                   id="txtUsername"
                   runat="server"
                   placeholder="Enter admin username"
                   required />

            <label>Password</label>

            <input type="password"
                   id="txtPassword"
                   runat="server"
                   placeholder="Enter admin password"
                   required />

            <button type="submit"
                    id="btnLogin"
                    runat="server"
                    onserverclick="AdminLogin_Click">
                Login
            </button>

            <p class="register">
                <a href="../Login.aspx">Back to User Login</a>
            </p>

        </form>

    </div>

</div>

</body>
</html>