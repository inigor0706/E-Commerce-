<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ManageOrders.aspx.cs"
    Inherits="ECommerce.Admin.ManageOrders" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Manage Orders</title>
    <link href="../CSS/style.css" rel="stylesheet" />
</head>

<body>
<form id="form1" runat="server">

    <nav class="navbar">
        <div class="brand">🔐 Admin Panel</div>
        <div class="nav-links">
            <a href="Dashboard.aspx">Dashboard</a>
            <a href="AddProduct.aspx">Add Product</a>
            <a href="ManageProducts.aspx">Products</a>
            <a href="ManageOrders.aspx">Orders</a>
            <a href="../Login.aspx">Logout</a>
        </div>
    </nav>

    <section class="manage-products-page">
        <h1>🛒 Manage Orders</h1>

        <div class="product-table">
            <table>
                <tr>
                    <th>Order ID</th>
                    <th>Customer</th>
                    <th>Product</th>
                    <th>Amount</th>
                    <th>Status</th>
                </tr>

                <tr>
                    <td>1001</td>
                    <td>Inigo</td>
                    <td>Casual T-Shirt</td>
                    <td>₹499</td>
                    <td>Confirmed</td>
                </tr>

            </table>
        </div>
    </section>

</form>
</body>
</html>