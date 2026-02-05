<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AmoretFashion.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Hero Section -->
    <section class="hero-section">
        <div class="hero-content">
            <div class="hero-overlay"></div>
            <img src="Images/hero-main.jpg" alt="Amoret Fashion" class="hero-image" />
            <div class="hero-text">
                <h1 class="brand-title">Amoret</h1>
                <p class="tagline">Romance, reimagined</p>
                <asp:Button ID="btnViewCollection" runat="server" Text="View Collection" CssClass="cta-button" OnClick="btnViewCollection_Click" />
            </div>
        </div>
    </section>

    <!-- Brand Introduction -->
    <section class="intro-section">
        <div class="container">
            <div class="intro-content">
                <div class="intro-text">
                    <h2>Where Romance Meets Modernity</h2>
                    <p>Amoret is more than a fashion brand—it's a celebration of timeless elegance reimagined for the contemporary woman. Our designs blend soft romanticism with modern sophistication, creating pieces that tell stories of grace, confidence, and feminine power.</p>
                    <p>Each collection is thoughtfully crafted to embody the delicate balance between classic beauty and contemporary edge, ensuring every piece becomes a cherished part of your wardrobe.</p>
                </div>
                <div class="intro-image">
                    <img src="Images/intro-image.jpg" alt="Amoret Brand Story" />
                </div>
            </div>
        </div>
    </section>

    <!-- Featured Collections Preview -->
    <section class="featured-section">
        <div class="container">
            <h2 class="section-title">Featured Collections</h2>
            <div class="featured-grid">
                <div class="featured-card">
                    <div class="card-image">
                        <img src="Images/featured-handbags.jpg" alt="Luxury Handbags" />
                    </div>
                    <h3>Handbags</h3>
                    <p>Timeless elegance in every detail</p>
                </div>
                <div class="featured-card">
                    <div class="card-image">
                        <img src="Images/featured-dresses.jpg" alt="Modern Dresses" />
                    </div>
                    <h3>Dresses</h3>
                    <p>Romantic silhouettes, modern confidence</p>
                </div>
                <div class="featured-card">
                    <div class="card-image">
                        <img src="Images/featured-accessories.jpg" alt="Fashion Accessories" />
                    </div>
                    <h3>Accessories</h3>
                    <p>The perfect finishing touch</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Philosophy Section -->
    <section class="philosophy-section">
        <div class="container">
            <div class="philosophy-content">
                <h2>Our Philosophy</h2>
                <p class="philosophy-text">We believe that fashion should evoke emotion, tell stories, and empower the wearer. Every stitch, every fabric choice, every design decision is made with intention and care. Amoret represents the intersection of art and wearability—where beauty meets function, and romance meets reality.</p>
            </div>
        </div>
    </section>
</asp:Content>
