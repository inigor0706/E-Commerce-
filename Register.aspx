<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs"
    Inherits="ECommerce.Register" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>E-Commerce - Register</title>
    <link href="CSS/style.css" rel="stylesheet" />
</head>

<body>

    <div class="login-page">

        <div class="login-card">

            <div class="logo">
                🛍️
            </div>

            <h1>Create Account</h1>

            <p class="welcome">
                Join us and start shopping!
            </p>

            <form id="form1" runat="server">

                <label>Full Name</label>
                <input type="text"
                       id="txtName"
                       runat="server"
                       placeholder="Enter your full name"
                       required />

                <label>Email Address</label>
                <input type="text"
                       id="txtEmail"
                       runat="server"
                       placeholder="Enter your email"
                       required />

                <label>Phone Number</label>
                <input type="text"
                       id="txtPhone"
                       runat="server"
                       placeholder="Enter your phone number"
                       required />

                <label>Password</label>
                <input type="password"
                       id="txtPassword"
                       runat="server"
                       placeholder="Create a password"
                       required />

                <label>Confirm Password</label>
                <input type="password"
                       id="txtConfirmPassword"
                       runat="server"
                       placeholder="Confirm your password"
                       required />

                <button type="submit"
                        id="btnRegister"
                        runat="server"
                        onserverclick="Register_Click">
                    Create Account
                </button>

                <p class="register">
                    Already have an account?
                    <a href="Login.aspx">Login</a>
                </p>

            </form>

        </div>

    </div>

</body>
</html>