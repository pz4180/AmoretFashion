using System;
using System.Web.UI;

namespace AmoretFashion
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic if needed
        }

        protected void btnViewCollection_Click(object sender, EventArgs e)
        {
            Response.Redirect("Collection.aspx");
        }
    }
}