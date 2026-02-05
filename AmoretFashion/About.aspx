<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="AmoretFashion.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- About Hero -->
    <section class="about-hero">
        <div class="container">
            <h1 class="page-title">About the Designer</h1>
            <p class="page-subtitle">Meet the creative mind behind Amoret</p>
        </div>
    </section>

    <!-- Designer Profile -->
    <section class="designer-section">
        <div class="container">
            <div class="designer-content">
                <div class="designer-image">
                    <img src="Images/designer-profile.jpg" alt="Nio Pei Zhi - Fashion Designer" />
                    <div class="image-decoration"></div>
                </div>
                <div class="designer-info">
                    <h2>Nio Pei Zhi</h2>
                    <p class="designer-title">Founder & Creative Director</p>
                    <div class="designer-bio">
                        <p>Hello, I'm Nio Pei Zhi, the creative mind and heart behind Amoret. My journey into fashion began with a simple belief: that clothing should be more than just fabric—it should be an expression of emotion, a celebration of femininity, and a testament to timeless beauty.</p>
                        <p>Growing up surrounded by art and nature, I developed a deep appreciation for the delicate interplay between softness and strength, tradition and innovation. These contrasts became the foundation of my design philosophy.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Design Philosophy -->
    <section class="philosophy-detail-section">
        <div class="container">
            <h2 class="section-title">Design Philosophy</h2>
            <div class="philosophy-grid">
                <div class="philosophy-card">
                    <div class="card-number">01</div>
                    <h3>Modern Romanticism</h3>
                    <p>I believe in creating pieces that capture the essence of romance while embracing contemporary sensibilities. My designs feature soft silhouettes, flowing fabrics, and delicate details that evoke emotion and elegance.</p>
                </div>
                <div class="philosophy-card">
                    <div class="card-number">02</div>
                    <h3>Timeless Elegance</h3>
                    <p>Fashion trends come and go, but true style is eternal. Each Amoret piece is designed to transcend seasons, becoming a cherished part of your wardrobe for years to come.</p>
                </div>
                <div class="philosophy-card">
                    <div class="card-number">03</div>
                    <h3>Feminine Empowerment</h3>
                    <p>My designs celebrate the multifaceted nature of modern femininity—soft yet strong, romantic yet confident, delicate yet powerful. Every piece is crafted to make you feel beautiful and empowered.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Inspiration -->
    <section class="inspiration-section">
        <div class="container">
            <div class="inspiration-content">
                <div class="inspiration-text">
                    <h2>Design Inspiration</h2>
                    <p>My inspiration comes from the world around us—the gentle curve of a flower petal, the soft morning light filtering through sheer curtains, the graceful movement of fabric in the breeze. I draw from:</p>
                    <ul class="inspiration-list">
                        <li>Classical art and romantic literature</li>
                        <li>Natural textures and organic forms</li>
                        <li>Vintage fashion with a modern twist</li>
                        <li>The quiet strength of feminine grace</li>
                        <li>Architectural lines and sculptural silhouettes</li>
                    </ul>
                    <p>These elements combine in my work to create pieces that feel both familiar and fresh, nostalgic yet forward-thinking.</p>
                </div>
                <div class="inspiration-image">
                    <img src="Images/inspiration-mood.jpg" alt="Design Inspiration" />
                </div>
            </div>
        </div>
    </section>

    <!-- Design Style -->
    <section class="style-section">
        <div class="container">
            <h2 class="section-title">The Amoret Style</h2>
            <div class="style-description">
                <p class="style-intro">Modern romantic fashion is about finding beauty in contrasts:</p>
                <div class="style-features">
                    <div class="style-feature">
                        <h3>Soft Palettes</h3>
                        <p>Blush pinks, warm beiges, soft whites, and gentle earth tones create a foundation of elegance</p>
                    </div>
                    <div class="style-feature">
                        <h3>Flowing Fabrics</h3>
                        <p>Silk, chiffon, and fine cotton that move with grace and comfort</p>
                    </div>
                    <div class="style-feature">
                        <h3>Delicate Details</h3>
                        <p>Subtle embroidery, gentle pleating, and refined hardware that add sophistication</p>
                    </div>
                    <div class="style-feature">
                        <h3>Modern Cuts</h3>
                        <p>Contemporary silhouettes that flatter while maintaining an air of effortless elegance</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Call to Action -->
    <section class="about-cta-section">
        <div class="container">
            <div class="about-cta">
                <h2>Experience Amoret</h2>
                <p>Discover collections that celebrate your unique beauty and style</p>
                <asp:Button ID="btnExploreCollection" runat="server" Text="Explore Collection" CssClass="cta-button" OnClick="btnExploreCollection_Click" />
            </div>
        </div>
    </section>
</asp:Content>
