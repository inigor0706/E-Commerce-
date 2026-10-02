<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ProductDetails.aspx.cs"
    Inherits="ECommerce.ProductDetails" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Product Details</title>
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

    <section class="details-page">

        <div class="details-card">

            <div class="details-image">
                👕
            </div>

            <div class="details-content">

                <h1>Casual T-Shirt</h1>

                <p class="details-price">₹499</p>

                <p>
                    Comfortable and stylish cotton T-Shirt
                    suitable for everyday use.
                </p>

                <p><b>Category:</b> Fashion</p>

                <label>Quantity</label>

                <input type="number"
                       value="1"
                       min="1"
                       class="quantity" />

                <br /><br />

                <button type="button" class="add-cart-btn">
                    🛒 Add to Cart
                </button>

            </div>

        </div>

    </section>

</form>

</body>
</html>