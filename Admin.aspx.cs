using System;

namespace ECommerce.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void AdminLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Value.Trim();
            string password = txtPassword.Value.Trim();

            if (username == "admin" && password == "admin123")
            {
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                Response.Write(
                    "<script>alert('Invalid Admin Username or Password');</script>"
                );
            }
        }
    }
}