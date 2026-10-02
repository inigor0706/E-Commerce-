using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ECommerce
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Register_Click(object sender, EventArgs e)
        {
            string name = txtName.Value.Trim();
            string email = txtEmail.Value.Trim();
            string phone = txtPhone.Value.Trim();
            string password = txtPassword.Value;
            string confirmPassword = txtConfirmPassword.Value;

            if (password != confirmPassword)
            {
                Response.Write("<script>alert('Passwords do not match');</script>");
                return;
            }

            string cs = ConfigurationManager
                .ConnectionStrings["ECommerceDB"]
                .ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "INSERT INTO Users (FullName, Email, Phone, Password) " +
                               "VALUES (@Name, @Email, @Phone, @Password)";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Phone", phone);
                    cmd.Parameters.AddWithValue("@Password", password);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            Response.Redirect("Login.aspx");
        }
    }
}