using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ECommerce.Admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void AddProduct_Click(object sender, EventArgs e)
        {
            string productName = txtProductName.Value.Trim();
            string category = txtCategory.Value.Trim();
            string price = txtPrice.Value.Trim();
            string description = txtDescription.Value.Trim();
            string imageName = txtImageName.Value.Trim();

            decimal productPrice;

            if (!decimal.TryParse(price, out productPrice))
            {
                Response.Write("<script>alert('Enter a valid price');</script>");
                return;
            }

            string cs = ConfigurationManager
                .ConnectionStrings["ECommerceDB"]
                .ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = @"INSERT INTO Products
                                (ProductName, Category, Price, Description, ImageName)
                                VALUES
                                (@ProductName, @Category, @Price, @Description, @ImageName)";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@ProductName", productName);
                    cmd.Parameters.AddWithValue("@Category", category);
                    cmd.Parameters.AddWithValue("@Price", productPrice);
                    cmd.Parameters.AddWithValue("@Description", description);
                    cmd.Parameters.AddWithValue("@ImageName", imageName);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            Response.Write("<script>alert('Product added successfully!');</script>");
        }
    }
}