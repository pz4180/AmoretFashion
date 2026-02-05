using System;
using System.Web.UI;

namespace AmoretFashion
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic if needed
        }

        protected void btnExploreCollection_Click(object sender, EventArgs e)
        {
            Response.Redirect("Collection.aspx");
        }
    }
}