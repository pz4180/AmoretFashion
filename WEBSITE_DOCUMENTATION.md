# Amoret Fashion - Website Documentation

## 1. About the Website

Amoret Fashion is a fashion brand website built using **ASP.NET Web Forms**. It promotes a personal fashion brand called **"Amoret"** with the tagline **"Romance, reimagined"**. The website shows off fashion items like handbags, shoes, dresses, and accessories. It also shares fashion tips and styling ideas through a lookbook page.

The main goal of this website is to look **modern, elegant, and professional** — just like a real fashion brand website.

---

## 2. How to Run / Deploy the Website

### What You Need
- **Visual Studio** (2019 or newer recommended)
- **.NET Framework 4.7.2 or 4.8** installed

### Steps to Run Locally
1. Open the solution file `AmoretFashion.slnx` in Visual Studio.
2. Wait for Visual Studio to load and restore any packages.
3. Press **F5** (or click the green "Start" button) to run the website.
4. The website will open in your browser automatically.

### Steps to Deploy (Publish)
1. In Visual Studio, right-click the **AmoretFashion** project.
2. Select **Publish**.
3. Choose your target (e.g., IIS, Azure, or a folder).
4. Follow the steps shown and click **Publish**.
5. Make sure the server has **.NET Framework 4.8** installed.

---

## 3. Additional Features

Beyond the basic requirements, this website includes:

- **Parallax Scrolling** — The hero image moves at a slower speed when you scroll, giving a nice depth effect.
- **Lazy Loading Images** — Images only load when you scroll to them, making the page faster.
- **Staggered Card Animations** — Cards fade in one by one as you scroll down the page.
- **Custom Cursor** — A small circle follows your mouse around the page and grows bigger when hovering over buttons or links.
- **Ripple Button Effect** — When you click a button, a ripple wave appears from where you clicked.
- **Collection Filter** — On the Collection page, you can filter items by category (Handbags, Shoes, Dresses, Accessories) using buttons.
- **Newsletter Subscription** — On the Lookbook page, users can enter their email to subscribe, with input checking (validation).
- **Hover Effects** — Cards lift up and images zoom in slightly when you hover over them.
- **Responsive Design** — The website looks good on desktop, tablet, and mobile screens.
- **Smooth Scrolling** — Clicking navigation links scrolls smoothly to sections instead of jumping.

---

## 4. Code Structure Overview

The project uses a **Master Page** layout. The `Site.Master` file holds the shared parts (navigation bar and footer), and each page fills in its own content.

### Site.Master (Shared Layout)
- Contains the **navigation bar** at the top (links: Home, About, Collection, Lookbook) with search and cart icons.
- Contains the **footer** at the bottom with brand info, shop links, company links, social media icons, and a newsletter form.
- All pages share this layout so the design stays consistent.

### Default.aspx (Home Page)
- **Hero Section** — A big full-screen image with the brand name "Amoret", tagline, and a "View Collection" button.
- **Brand Introduction** — A two-column section with text about the brand and an image.
- **Featured Collections** — Shows 3 preview cards (Handbags, Dresses, Accessories) with images and short descriptions.
- **Philosophy Section** — A text section about the brand's design beliefs.

### About.aspx (About the Designer)
- **Designer Profile** — A photo and bio of the designer (Nio Pei Zhi, Founder & Creative Director).
- **Design Philosophy** — Three numbered cards: Modern Romanticism, Timeless Elegance, Feminine Empowerment.
- **Design Inspiration** — Lists inspiration sources like classical art, natural textures, vintage fashion, and architecture.
- **The Amoret Style** — Four feature blocks: Soft Palettes, Flowing Fabrics, Delicate Details, Modern Cuts.
- **CTA Section** — A button that links to the Collection page.

### Collection.aspx (Gallery / Product Showcase)
- **Filter Buttons** — Five buttons (All, Handbags, Shoes, Dresses, Accessories) to filter products by category.
- **Product Grid** — Shows 8 fashion items in a 3-column grid. Each item has an image, name, category, description, and price (in RM).
- **Hover Overlay** — Hovering on an item shows a dark overlay with a "View Details" button.
- **Collection Statement** — A short motivational message at the bottom.

### Lookbook.aspx (Fashion Journal / Blog)
- **Featured Article** — A large section highlighting one article ("The Art of Modern Romantic Dressing").
- **Article Grid** — Six articles covering topics like styling tips, fashion tips, and seasonal trends.
- **Quick Styling Tips** — Four numbered tip cards (Mix Textures, Embrace Neutrals, Focus on Fit, Invest in Classics).
- **Newsletter Section** — An email subscription form with validation and success/error messages.

---

## 5. Libraries and Frameworks Used

| Library / Tool | What It Does |
|---|---|
| **ASP.NET Web Forms** (.NET Framework 4.7.2 / 4.8) | The main framework used to build the website. It uses Master Pages and Code-Behind files. |
| **Google Fonts — Cormorant Garamond** | A serif font used for headings and the brand name to give an elegant feel. |
| **Google Fonts — Raleway** | A clean sans-serif font used for body text and navigation. |
| **Vanilla CSS** (no Bootstrap) | All styling is written from scratch using plain CSS with features like CSS Grid, Flexbox, CSS Variables, and media queries. |
| **Vanilla JavaScript** (no jQuery) | All interactive features (animations, filtering, custom cursor, parallax) are built with plain JavaScript and the IntersectionObserver API. |

> **Note:** No external CSS or JavaScript frameworks (like Bootstrap or jQuery) were used. Everything is custom-built.

---

## 6. How Errors Are Handled

### Server-Side (C# Code-Behind)

- **Email Validation (Lookbook page):**
  - If the email field is **empty**, it shows: *"Please enter your email address."*
  - If the email is **not valid** (missing "@" or "."), it shows: *"Please enter a valid email address."*
  - If the email is **valid**, it shows: *"Thank you for subscribing!"*
  - Error messages appear in **pink**, and success messages appear in **green**.

- **Page Redirects:**
  - Buttons like "View Collection" use server-side `Response.Redirect()` to safely send users to the correct page.

- **Collection Filtering:**
  - The filter buttons use `ViewState` to remember which category is selected, even after the page refreshes (postback).

### Client-Side (JavaScript)

- **Smooth Degradation** — If a browser does not support `IntersectionObserver`, the animations simply won't play, but the website still works fine.
- **Null Checks** — The JavaScript code checks if elements exist on the page before trying to use them, so errors are avoided on pages where certain elements are not present.

### General

- The website uses **ASP.NET's built-in ViewState** to keep track of page data between clicks (postbacks).
- Error messages are shown using **ASP.NET Label controls** with CSS classes that change the color (green for success, pink for errors).
- The website relies on ASP.NET's **default error handling** for any unexpected server errors.
