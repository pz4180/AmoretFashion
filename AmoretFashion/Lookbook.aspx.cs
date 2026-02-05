using System;
using System.Web.UI;

namespace AmoretFashion
{
    public partial class Lookbook : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic if needed
        }

        protected void btnSubscribe_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();

            if (string.IsNullOrEmpty(email))
            {
                lblMessage.Text = "Please enter your email address.";
                lblMessage.CssClass = "newsletter-message error";
                lblMessage.Visible = true;
                return;
            }

            // Basic email validation
            if (!email.Contains("@") || !email.Contains("."))
            {
                lblMessage.Text = "Please enter a valid email address.";
                lblMessage.CssClass = "newsletter-message error";
                lblMessage.Visible = true;
                return;
            }

            lblMessage.Text = "Thank you for subscribing! You'll receive our latest updates soon.";
            lblMessage.CssClass = "newsletter-message success";
            lblMessage.Visible = true;

            // Clear the textbox
            txtEmail.Text = string.Empty;
        }
    }
}