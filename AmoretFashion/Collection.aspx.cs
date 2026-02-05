using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmoretFashion
{
    public partial class Collection : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initial page load
            }
        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string category = btn.CommandArgument;

            // Reset all buttons to inactive
            btnAll.CssClass = "filter-btn";
            btnHandbags.CssClass = "filter-btn";
            btnShoes.CssClass = "filter-btn";
            btnDresses.CssClass = "filter-btn";
            btnAccessories.CssClass = "filter-btn";

            // Set clicked button to active
            btn.CssClass = "filter-btn active";

            ViewState["SelectedCategory"] = category;
        }
    }
}