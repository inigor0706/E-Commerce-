<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Cart.aspx.cs"
    Inherits="ECommerce.Cart" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Shopping Cart</title>
    <link href="CSS/style.css" rel="stylesheet" />
</head>

<body>

<form id="form1" runat="server">

    <nav class="navbar">
        <div class="brand">🛍️ E-Commerce</div>

        <div class="nav-links">
            <a href="Home.aspx">Home</a>
            <a href="Products.aspx">Products</a>
            <a href="Cart.aspx">🛒 Cart</a>
            <a href="Login.aspx">Logout</a>
        </div>
    </nav>

    <section class="cart-page">

        <h1>🛒 Shopping Cart</h1>

        <div class="cart-container">

            <div class="cart-item">

                <div class="cart-image">👕</div>

                <div class="cart-info">
                    <h3>Casual T-Shirt</h3>
                    <p>Price: ₹499</p>

                    <label>Quantity:</label>
                    <input type="number"
                           value="1"
                           min="1"
                           class="cart-quantity" />
                </div>

                <div class="cart-price">
                    ₹499
                </div>

                <button type="button" class="remove-btn">
                    Remove
                </button>

            </div>

            <div class="cart-summary">

                <h2>Order Summary</h2>

                <p>Subtotal: <b>₹499</b></p>
                <p>Delivery: <b>Free</b></p>

                <hr />

                <h3>Total: ₹499</h3>

                <a href="Checkout.aspx" class="checkout-btn">
                    Proceed to Checkout
                </a>

            </div>

        </div>

    </section
</form>

</body>
</html>