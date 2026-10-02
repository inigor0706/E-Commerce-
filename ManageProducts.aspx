<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ManageProducts.aspx.cs"
    Inherits="ECommerce.Admin.ManageProducts" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Manage Products</title>
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

        <h1>📦 Manage Products</h1>
        <p>View and manage your products</p>

        <div class="product-table">

            <table>

                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Product Name</th>
                        <th>Category</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                </thead>

                <tbody>

                    <asp:Repeater ID="rptProducts" runat="server">

                        <ItemTemplate>

                            <tr>
                                <td>
                                    <%# Eval("ProductID") %>
                                </td>

                                <td>
                                    <%# Eval("ProductName") %>
                                </td>

                                <td>
                                    <%# Eval("Category") %>
                                </td>

                                <td>
                                    ₹<%# Eval("Price") %>
                                </td>

                                <td>

                                    <a href='EditProduct.aspx?id=<%# Eval("ProductID") %>'
                                       class="edit-btn">
                                        ✏️ Edit
                                    </a>

                                    <a href='DeleteProduct.aspx?id=<%# Eval("ProductID") %>'
                                       class="delete-btn"
                                       onclick="return confirm('Are you sure you want to delete this product?');">
                                        🗑️ Delete
                                    </a>

                                </td>
                            </tr>

                        </ItemTemplate>

                    </asp:Repeater>

                </tbody>

            </table>

        </div>

    </section>

</form>

</body>
</html>