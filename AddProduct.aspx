<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AddProduct.aspx.cs"
    Inherits="ECommerce.Admin.AddProduct" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Add Product</title>
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

    <section class="add-product-page">

        <div class="add-product-card">

            <h1>➕ Add New Product</h1>
            <p>Enter product details below</p>

            <label>Product Name</label>
            <input type="text"
                   id="txtProductName"
                   runat="server"
                   placeholder="Enter product name"
                   required />

            <label>Category</label>
            <input type="text"
                   id="txtCategory"
                   runat="server"
                   placeholder="Enter category"
                   required />

            <label>Price</label>
            <input type="text"
                   id="txtPrice"
                   runat="server"
                   placeholder="Enter price"
                   required />

            <label>Description</label>
            <textarea id="txtDescription"
                      runat="server"
                      placeholder="Enter product description"></textarea>

            <label>Image Name</label>
            <input type="text"
                   id="txtImageName"
                   runat="server"
                   placeholder="Example: tshirt.jpg" />

            <button type="submit"
                    id="btnAddProduct"
                    runat="server"
                    onserverclick="AddProduct_Click">
                Add Product
            </button>

        </div>

    </section>

</form>

</body>
</html>