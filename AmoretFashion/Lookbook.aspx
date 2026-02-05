<%@ Page Title="Lookbook" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lookbook.aspx.cs" Inherits="AmoretFashion.Lookbook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Lookbook Hero -->
    <section class="lookbook-hero">
        <div class="container">
            <h1 class="page-title">Lookbook</h1>
            <p class="page-subtitle">Fashion insights, styling tips, and seasonal inspirations</p>
        </div>
    </section>

    <!-- Featured Article -->
    <section class="featured-article">
        <div class="container">
            <div class="article-featured">
                <div class="article-image-large">
                    <img src="Images/lookbook-featured.jpg" alt="Spring Romance Collection" />
                </div>
                <div class="article-content-featured">
                    <span class="article-tag">Featured Story</span>
                    <h2>The Art of Modern Romantic Dressing</h2>
                    <p class="article-date">December 2024</p>
                    <p class="article-excerpt">Discover how to blend soft, romantic aesthetics with contemporary confidence. Modern romantic dressing isn't about looking delicate—it's about feeling empowered while embracing beauty and grace. Learn how to incorporate flowing silhouettes, soft textures, and timeless pieces into your everyday wardrobe.</p>
                    <asp:Button ID="btnReadFeatured" runat="server" Text="Read More" CssClass="read-more-btn" />
                </div>
            </div>
        </div>
    </section>

    <!-- Articles Grid -->
    <section class="articles-section">
        <div class="container">
            <h2 class="section-title">Fashion Journal</h2>
            <div class="articles-grid">
                <!-- Article 1 -->
                <article class="article-card">
                    <div class="article-image">
                        <img src="Images/lookbook-styling-1.jpg" alt="Layering Techniques" />
                    </div>
                    <div class="article-content">
                        <span class="article-tag">Styling Tips</span>
                        <h3>The Art of Layering</h3>
                        <p class="article-date">January 2026</p>
                        <p>Master the art of layering textures and tones for a sophisticated winter look. From lightweight vests over crisp shirts to flowing outerwear, discover how to create depth and interest in your outfits while staying warm and elegant.</p>
                        <asp:Button ID="btnRead1" runat="server" Text="Read More" CssClass="read-more-btn-small" />
                    </div>
                </article>

                <!-- Article 2 -->
                <article class="article-card">
                    <div class="article-image">
                        <img src="Images/lookbook-accessories-1.jpg" alt="Accessory Styling" />
                    </div>
                    <div class="article-content">
                        <span class="article-tag">Styling Tips</span>
                        <h3>Statement Accessories</h3>
                        <p class="article-date">November 2025</p>
                        <p>Learn how the right accessories can transform a simple outfit into something extraordinary. Explore how to choose pieces that complement your style while adding that perfect finishing touch to your romantic wardrobe.</p>
                        <asp:Button ID="btnRead2" runat="server" Text="Read More" CssClass="read-more-btn-small"  />
                    </div>
                </article>

                <!-- Article 3 -->
                <article class="article-card">
                    <div class="article-image">
                        <img src="Images/lookbook-colors-1.jpg" alt="Color Palette Guide" />
                    </div>
                    <div class="article-content">
                        <span class="article-tag">Fashion Tips</span>
                        <h3>Building Your Color Palette</h3>
                        <p class="article-date">October 2025</p>
                        <p>Discover the beauty of soft, romantic color palettes. Learn how to create a cohesive wardrobe with warm beiges, gentle pinks, soft whites, and natural earth tones that work harmoniously together season after season.</p>
                        <asp:Button ID="btnRead3" runat="server" Text="Read More" CssClass="read-more-btn-small"  />
                    </div>
                </article>

                <!-- Article 4 -->
                <article class="article-card">
                    <div class="article-image">
                        <img src="Images/lookbook-seasonal-1.jpg" alt="Seasonal Trends" />
                    </div>
                    <div class="article-content">
                        <span class="article-tag">Seasonal Trends</span>
                        <h3>Winter Elegance</h3>
                        <p class="article-date">November 2024</p>
                        <p>Embrace the beauty of winter dressing with luxurious textures and layered sophistication. Explore how to maintain your romantic aesthetic while adapting to cooler weather with grace and style.</p>
                        <asp:Button ID="btnRead4" runat="server" Text="Read More" CssClass="read-more-btn-small"  />
                    </div>
                </article>

                <!-- Article 5 -->
                <article class="article-card">
                    <div class="article-image">
                        <img src="Images/lookbook-wardrobe-1.jpg" alt="Capsule Wardrobe" />
                    </div>
                    <div class="article-content">
                        <span class="article-tag">Fashion Tips</span>
                        <h3>Creating a Timeless Capsule</h3>
                        <p class="article-date">September 2024</p>
                        <p>Build a wardrobe of essential pieces that transcend trends. Learn how to invest in quality items that you'll love for years, creating endless outfit possibilities with minimal pieces.</p>
                        <asp:Button ID="btnRead5" runat="server" Text="Read More" CssClass="read-more-btn-small"  />
                    </div>
                </article>

                <!-- Article 6 -->
                <article class="article-card">
                    <div class="article-image">
                        <img src="Images/lookbook-fabrics-1.jpg" alt="Fabric Guide" />
                    </div>
                    <div class="article-content">
                        <span class="article-tag">Fashion Tips</span>
                        <h3>Understanding Luxury Fabrics</h3>
                        <p class="article-date">June 2024</p>
                        <p>Explore the world of premium fabrics—from silk and chiffon to fine cotton and wool. Learn how different materials drape, feel, and wear, helping you make informed choices for your wardrobe.</p>
                        <asp:Button ID="btnRead6" runat="server" Text="Read More" CssClass="read-more-btn-small"  />
                    </div>
                </article>
            </div>
        </div>
    </section>

    <!-- Styling Tips Section -->
    <section class="tips-section">
        <div class="container">
            <h2 class="section-title">Quick Styling Tips</h2>
            <div class="tips-grid">
                <div class="tip-card">
                    <div class="tip-number">01</div>
                    <h3>Mix Textures</h3>
                    <p>Combine smooth silks with textured knits for visual interest and depth in your outfits.</p>
                </div>
                <div class="tip-card">
                    <div class="tip-number">02</div>
                    <h3>Embrace Neutrals</h3>
                    <p>Build your foundation with timeless neutral tones that work together effortlessly.</p>
                </div>
                <div class="tip-card">
                    <div class="tip-number">03</div>
                    <h3>Focus on Fit</h3>
                    <p>Perfect fit is more important than perfect trend. Tailor pieces to flatter your unique shape.</p>
                </div>
                <div class="tip-card">
                    <div class="tip-number">04</div>
                    <h3>Invest in Classics</h3>
                    <p>Choose quality pieces that transcend seasons—they'll serve you for years to come.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Newsletter Section -->
    <section class="newsletter-section">
        <div class="container">
            <div class="newsletter-content">
                <h2>Stay Inspired</h2>
                <p>Subscribe to receive styling tips, exclusive previews, and fashion inspiration directly to your inbox.</p>
                <div class="newsletter-form">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="newsletter-input" placeholder="Enter your email address" TextMode="Email"></asp:TextBox>
                    <asp:Button ID="btnSubscribe" runat="server" Text="Subscribe" CssClass="subscribe-btn" OnClick="btnSubscribe_Click" />
                </div>
                <asp:Label ID="lblMessage" runat="server" CssClass="newsletter-message" Visible="false"></asp:Label>
            </div>
        </div>
    </section>
</asp:Content>
