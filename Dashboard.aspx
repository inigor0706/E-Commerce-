<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Dashboard.aspx.cs"
    Inherits="ECommerce.Admin.Dashboard" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Admin Dashboard</title>
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

    <section class="admin-dashboard">

        <h1>Admin Dashboard</h1>
        <p>Manage your E-Commerce website</p>

        <div class="admin-card-container">

            <div class="admin-card">
                <div class="admin-icon">📦</div>
                <h2>Products</h2>
                <p>Manage all products</p>
                <a href="ManageProducts.aspx">View Products</a>
            </div>

            <div class="admin-card">
                <div class="admin-icon">➕</div>
                <h2>Add Product</h2>
                <p>Add new products</p>
                <a href="AddProduct.aspx">Add Product</a>
            </div>

            <div class="admin-card">
                <div class="admin-icon">🛒</div>
                <h2>Orders</h2>
                <p>Manage customer orders</p>
                <a href="ManageOrders.aspx">View Orders</a>
            </div>

        </div>

    </section>

</form>

</body>
</html>