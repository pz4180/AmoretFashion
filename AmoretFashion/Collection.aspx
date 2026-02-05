<%@ Page Title="Collection" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Collection.aspx.cs" Inherits="AmoretFashion.Collection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Collection Hero -->
    <section class="collection-hero">
        <div class="container">
            <h1 class="page-title">Our Collection</h1>
            <p class="page-subtitle">Timeless pieces crafted with love and attention to detail</p>
        </div>
    </section>

    <!-- Category Filter -->
    <section class="category-filter">
        <div class="container">
            <div class="filter-buttons">
                <asp:Button ID="btnAll" runat="server" Text="All" CssClass="filter-btn active" OnClick="btnFilter_Click" CommandArgument="all" />
                <asp:Button ID="btnHandbags" runat="server" Text="Handbags" CssClass="filter-btn" OnClick="btnFilter_Click" CommandArgument="handbags" />
                <asp:Button ID="btnShoes" runat="server" Text="Shoes" CssClass="filter-btn" OnClick="btnFilter_Click" CommandArgument="shoes" />
                <asp:Button ID="btnDresses" runat="server" Text="Dresses" CssClass="filter-btn" OnClick="btnFilter_Click" CommandArgument="dresses" />
                <asp:Button ID="btnAccessories" runat="server" Text="Accessories" CssClass="filter-btn" OnClick="btnFilter_Click" CommandArgument="accessories" />
            </div>
        </div>
    </section>

    <!-- Collection Grid -->
    <section class="collection-section">
        <div class="container">
            <div class="collection-grid">
                <!-- Item 1: Bobby Bag -->
                <div class="collection-item" data-category="handbags">
                    <div class="item-image">
                        <img src="Images/collection-bag-1.jpg" alt="Bobby Bag" />
                        <div class="item-overlay">
                            <asp:Button ID="btnViewItem1" runat="server" Text="View Details" CssClass="view-btn"  />
                        </div>
                    </div>
                    <div class="item-info">
                        <h3>Bobby</h3>
                        <p class="item-category">Handbag</p>
                        <p class="item-description">Elegant crossbody bag in soft quilted lambskin. Perfect for day-to-evening wear.</p>
                        <p class="item-price">RM1,200</p>
                    </div>
                </div>

                <!-- Item 2: Running Shoes -->
                <div class="collection-item" data-category="shoes">
                    <div class="item-image">
                        <img src="Images/collection-shoes-1.jpg" alt="Sneakers" />
                        <div class="item-overlay">
                            <asp:Button ID="btnViewItem2" runat="server" Text="View Details" CssClass="view-btn"  />
                        </div>
                    </div>
                    <div class="item-info">
                        <h3>Running Sneakers</h3>
                        <p class="item-category">Shoes</p>
                        <p class="item-description">Contemporary athletic sneakers combining comfort with luxury. Features mesh and technical fabric with subtle branding.</p>
                        <p class="item-price">RM800</p>
                    </div>
                </div>

                <!-- Item 3: D-Way Windbreaker -->
                <div class="collection-item" data-category="accessories">
                    <div class="item-image">
                        <img src="Images/collection-jacket-1.jpg" alt="Windbreaker" />
                        <div class="item-overlay">
                            <asp:Button ID="btnViewItem3" runat="server" Text="View Details" CssClass="view-btn"  />
                        </div>
                    </div>
                    <div class="item-info">
                        <h3>Windbreaker</h3>
                        <p class="item-category">Outerwear</p>
                        <p class="item-description">Lightweight hooded jacket in soft beige with tonal pattern. Perfect for layering in transitional weather.</p>
                        <p class="item-price">RM4000</p>
                    </div>
                </div>

                <!-- Item 4: Textured Vest -->
                <div class="collection-item" data-category="dresses">
                    <div class="item-image">
                        <img src="Images/collection-vest-1.jpg" alt="Textured Knit Vest" />
                        <div class="item-overlay">
                            <asp:Button ID="btnViewItem4" runat="server" Text="View Details" CssClass="view-btn"  />
                        </div>
                    </div>
                    <div class="item-info">
                        <h3>Textured Knit Vest</h3>
                        <p class="item-category">Top</p>
                        <p class="item-description">Oversized sleeveless vest with unique textured knit pattern. Pairs beautifully with crisp white shirts for a sophisticated look.</p>
                        <p class="item-price">RM7,800</p>
                    </div>
                </div>

                <!-- Item 5: Pleated Long Skirt -->
                <div class="collection-item" data-category="dresses">
                    <div class="item-image">
                        <img src="Images/collection-skirt-1.jpg" alt="Pleated Long Skirt" />
                        <div class="item-overlay">
                            <asp:Button ID="btnViewItem5" runat="server" Text="View Details" CssClass="view-btn"  />
                        </div>
                    </div>
                    <div class="item-info">
                        <h3>Pleated Long Skirt</h3>
                        <p class="item-category">Skirt</p>
                        <p class="item-description">Flowing midi skirt with delicate pleating in warm taupe. Moves gracefully with every step, perfect for romantic styling.</p>
                        <p class="item-price">RM2,000</p>
                    </div>
                </div>

                <!-- Item 6: Chain Necklace -->
                <div class="collection-item" data-category="accessories">
                    <div class="item-image">
                        <img src="Images/collection-necklace-1.jpg" alt="Signature Necklace" />
                        <div class="item-overlay">
                            <asp:Button ID="btnViewItem6" runat="server" Text="View Details" CssClass="view-btn"  />
                        </div>
                    </div>
                    <div class="item-info">
                        <h3>Signature Necklace</h3>
                        <p class="item-category">Jewelry</p>
                        <p class="item-description">Gold-finish chain necklace. Statement piece that elevates any outfit with timeless luxury.</p>
                        <p class="item-price">RM5,600</p>
                    </div>
                </div>

                <!-- Item 7: Elegant Dress -->
                <div class="collection-item" data-category="dresses">
                    <div class="item-image">
                        <img src="Images/collection-dress-1.jpg" alt="Romantic Dress" />
                        <div class="item-overlay">
                            <asp:Button ID="btnViewItem7" runat="server" Text="View Details" CssClass="view-btn"  />
                        </div>
                    </div>
                    <div class="item-info">
                        <h3>Flowing Midi Dress</h3>
                        <p class="item-category">Dress</p>
                        <p class="item-description">Ethereal dress in soft beige with delicate pleating and gentle draping. Embodies modern romantic elegance.</p>
                        <p class="item-price">RM5,000</p>
                    </div>
                </div>

                <!-- Item 8: White Shirt -->
                <div class="collection-item" data-category="dresses">
                    <div class="item-image">
                        <img src="Images/collection-shirt-1.jpg" alt="Classic White Shirt" />
                        <div class="item-overlay">
                            <asp:Button ID="btnViewItem8" runat="server" Text="View Details" CssClass="view-btn"  />
                        </div>
                    </div>
                    <div class="item-info">
                        <h3>Classic White Shirt</h3>
                        <p class="item-category">Top</p>
                        <p class="item-description">Timeless cotton shirt with refined collar and cuffs. A wardrobe essential that pairs beautifully with everything.</p>
                        <p class="item-price">RM1,500</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Collection Statement -->
    <section class="collection-statement">
        <div class="container">
            <div class="statement-content">
                <h2>Crafted with Purpose</h2>
                <p>Every piece in our collection tells a story of craftsmanship, beauty, and intention. We believe in creating fashion that transcends trends and becomes part of your personal narrative.</p>
            </div>
        </div>
    </section>
</asp:Content>
