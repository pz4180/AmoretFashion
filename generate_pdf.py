#!/usr/bin/env python3
"""Generate PDF documentation for AmoretFashion website project."""

from reportlab.lib.pagesizes import A4
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.lib.colors import HexColor
from reportlab.lib.units import mm
from reportlab.platypus import (
    SimpleDocTemplate, Paragraph, Spacer, HRFlowable, PageBreak
)


ACCENT = HexColor("#D4B2A7")
DARK = HexColor("#4A433F")
GREY = HexColor("#3C3C3C")
LIGHT_GREY = HexColor("#888888")


def build_styles():
    ss = getSampleStyleSheet()

    ss.add(ParagraphStyle(
        "CoverTitle", fontName="Helvetica-Bold", fontSize=28,
        textColor=DARK, alignment=1, spaceAfter=10, leading=34,
    ))
    ss.add(ParagraphStyle(
        "CoverTagline", fontName="Helvetica-Oblique", fontSize=15,
        textColor=ACCENT, alignment=1, spaceAfter=14, leading=20,
    ))
    ss.add(ParagraphStyle(
        "CoverSub", fontName="Helvetica", fontSize=12,
        textColor=LIGHT_GREY, alignment=1, spaceAfter=6, leading=16,
    ))
    ss.add(ParagraphStyle(
        "SectionTitle", fontName="Helvetica-Bold", fontSize=14,
        textColor=DARK, spaceBefore=18, spaceAfter=6, leading=18,
    ))
    ss.add(ParagraphStyle(
        "SubTitle", fontName="Helvetica-Bold", fontSize=11,
        textColor=DARK, spaceBefore=10, spaceAfter=4, leading=14,
    ))
    ss.add(ParagraphStyle(
        "Body", fontName="Helvetica", fontSize=10,
        textColor=GREY, spaceAfter=6, leading=14.5,
    ))
    ss.add(ParagraphStyle(
        "BulletItem", fontName="Helvetica", fontSize=10,
        textColor=GREY, leftIndent=14, bulletIndent=4,
        spaceAfter=3, leading=14, bulletFontName="Helvetica",
    ))
    return ss


def section_hr():
    return HRFlowable(
        width="35%", thickness=1, color=ACCENT,
        spaceBefore=2, spaceAfter=8, hAlign="LEFT",
    )


def cover_hr():
    return HRFlowable(
        width="30%", thickness=1, color=ACCENT,
        spaceBefore=8, spaceAfter=12, hAlign="CENTER",
    )


def build_pdf():
    output = "/home/user/AmoretFashion/AmoretFashion_Documentation.pdf"
    doc = SimpleDocTemplate(
        output, pagesize=A4,
        topMargin=20 * mm, bottomMargin=20 * mm,
        leftMargin=20 * mm, rightMargin=20 * mm,
        title="Amoret Fashion - Project Documentation",
        author="Nio Pei Zhi",
    )

    ss = build_styles()
    story = []

    # ── Cover ──
    story.append(Spacer(1, 80))
    story.append(Paragraph("Amoret Fashion", ss["CoverTitle"]))
    story.append(Paragraph("Romance, Reimagined", ss["CoverTagline"]))
    story.append(cover_hr())
    story.append(Paragraph("Project Documentation", ss["CoverSub"]))
    story.append(Paragraph(
        "Creative Website Development  &middot;  ASP.NET Web Forms", ss["CoverSub"]
    ))
    story.append(Paragraph("Designer: Nio Pei Zhi", ss["CoverSub"]))
    story.append(Spacer(1, 60))
    story.append(Paragraph("February 2026", ss["CoverSub"]))
    story.append(PageBreak())

    # ── 1. Website Description ──
    story.append(Paragraph("1. Website Description", ss["SectionTitle"]))
    story.append(section_hr())
    story.append(Paragraph(
        "Amoret Fashion is a creative, visually-driven fashion brand website built with "
        "ASP.NET Web Forms. The website promotes the personal fashion brand "
        "<b>\"Amoret\"</b> with the tagline <i>\"Romance, Reimagined\"</i>, founded by "
        "designer Nio Pei Zhi.", ss["Body"]
    ))
    story.append(Paragraph(
        "The site presents a modern, elegant aesthetic centred on soft romanticism and "
        "timeless femininity. It features a warm colour palette of blush pinks, beiges, "
        "and earth tones complemented by a serif and sans-serif typography pairing "
        "(Cormorant Garamond and Raleway). The design prioritises visual storytelling "
        "and brand identity over complex system functionality.", ss["Body"]
    ))
    story.append(Paragraph(
        "Key brand pillars include Modern Romanticism, Timeless Elegance, and Feminine "
        "Empowerment. The collection spans handbags, shoes, dresses, outerwear, and "
        "accessories, all priced in Malaysian Ringgit (RM).", ss["Body"]
    ))

    # ── 2. How to Run / Deploy ──
    story.append(Paragraph("2. How to Run / Deploy the Website", ss["SectionTitle"]))
    story.append(section_hr())

    story.append(Paragraph("Prerequisites", ss["SubTitle"]))
    story.append(Paragraph(
        "Visual Studio 2019 or later (with ASP.NET and web development workload)",
        ss["BulletItem"], bulletText="\u2022"
    ))
    story.append(Paragraph(
        ".NET Framework 4.7.2 or higher installed",
        ss["BulletItem"], bulletText="\u2022"
    ))
    story.append(Paragraph(
        "IIS Express (included with Visual Studio)",
        ss["BulletItem"], bulletText="\u2022"
    ))

    story.append(Paragraph("Running Locally", ss["SubTitle"]))
    story.append(Paragraph(
        "Open <b>AmoretFashion.slnx</b> in Visual Studio.",
        ss["BulletItem"], bulletText="1."
    ))
    story.append(Paragraph(
        "Restore NuGet packages (Visual Studio does this automatically on build).",
        ss["BulletItem"], bulletText="2."
    ))
    story.append(Paragraph(
        "Press <b>F5</b> or click <b>Start Debugging</b>.",
        ss["BulletItem"], bulletText="3."
    ))
    story.append(Paragraph(
        "The site launches on IIS Express at <b>https://localhost:44323/</b>.",
        ss["BulletItem"], bulletText="4."
    ))

    story.append(Paragraph("Deploying to IIS (Production)", ss["SubTitle"]))
    story.append(Paragraph(
        "Right-click the project in Visual Studio and select <b>Publish</b>.",
        ss["BulletItem"], bulletText="1."
    ))
    story.append(Paragraph(
        "Choose a publish target (Folder, IIS, Azure, etc.).",
        ss["BulletItem"], bulletText="2."
    ))
    story.append(Paragraph(
        "Configure the target .NET Framework version (4.7.2+) and deploy.",
        ss["BulletItem"], bulletText="3."
    ))
    story.append(Paragraph(
        "Ensure the IIS application pool targets .NET CLR v4.0.",
        ss["BulletItem"], bulletText="4."
    ))

    # ── 3. Additional Features ──
    story.append(Paragraph("3. Additional Features", ss["SectionTitle"]))
    story.append(section_hr())
    story.append(Paragraph(
        "Beyond the core page requirements, the following enhancements have been added:",
        ss["Body"]
    ))

    features = [
        ("Custom Cursor", "A stylised circular cursor that scales up when hovering over "
         "interactive elements, using mix-blend-mode for a modern feel. Hidden on mobile."),
        ("Parallax Scrolling", "The hero image scrolls at a slower rate than the page "
         "content, creating a depth effect on the home page."),
        ("Lazy Image Loading", "Images load on-demand using IntersectionObserver, "
         "improving initial page load performance."),
        ("Button Ripple Effect", "Material-design-inspired ripple animation on button "
         "clicks, with position-aware origin."),
        ("Scroll Animations", "Cards and headings fade in and slide up as the user "
         "scrolls, with staggered timing between elements."),
        ("Newsletter Subscription", "An email subscription form with server-side "
         "validation and colour-coded success/error messages."),
        ("Collection Filtering", "Client-side category filtering lets users filter "
         "products by Handbags, Shoes, Dresses, and Accessories."),
        ("Navbar Scroll Effect", "The navigation bar gains a shadow on scroll, "
         "providing visual feedback for the user's position."),
        ("Nav Stagger Animation", "Menu items fade in sequentially on page load "
         "for a polished entrance effect."),
    ]
    for label, desc in features:
        story.append(Paragraph(
            f"<b>{label}</b> &ndash; {desc}", ss["BulletItem"], bulletText="\u2022"
        ))

    # ── 4. Code Structure Overview ──
    story.append(PageBreak())
    story.append(Paragraph("4. Code Structure Overview", ss["SectionTitle"]))
    story.append(section_hr())
    story.append(Paragraph(
        "The project follows the standard ASP.NET Web Forms architecture with a master "
        "page, individual content pages, a shared stylesheet, and a shared script file.",
        ss["Body"]
    ))

    story.append(Paragraph("Site.Master (Master Page)", ss["SubTitle"]))
    story.append(Paragraph(
        "Defines the shared layout for every page: a fixed navigation bar with the brand "
        "logo, menu links (Home, About, Collection, Lookbook), and icon buttons for "
        "search and cart. Loads Google Fonts (Cormorant Garamond, Raleway), references "
        "Site.css and Site.js, and contains a ContentPlaceHolder for page-specific "
        "content. The footer includes brand info, social media links (Facebook, "
        "Instagram, YouTube), navigation shortcuts, a newsletter form, and copyright.",
        ss["Body"]
    ))

    story.append(Paragraph("Default.aspx (Home Page)", ss["SubTitle"]))
    story.append(Paragraph(
        "Opens with a full-viewport hero section displaying the brand name, tagline, and "
        "a \"View Collection\" call-to-action button. Below the hero is a brand "
        "introduction section, a three-column featured collections grid (Handbags, "
        "Dresses, Accessories), and a brand philosophy statement. The code-behind "
        "handles the CTA button redirect to Collection.aspx.",
        ss["Body"]
    ))

    story.append(Paragraph("About.aspx (About the Designer)", ss["SubTitle"]))
    story.append(Paragraph(
        "Introduces Nio Pei Zhi as Founder and Creative Director with a photo and "
        "biography. Includes three philosophy cards (Modern Romanticism, Timeless "
        "Elegance, Feminine Empowerment), a design inspiration section listing artistic "
        "influences, the Amoret style characteristics (palettes, fabrics, details, cuts), "
        "and a CTA button redirecting to Collection.aspx.",
        ss["Body"]
    ))

    story.append(Paragraph("Collection.aspx (Collection / Gallery)", ss["SubTitle"]))
    story.append(Paragraph(
        "Showcases eight fashion items in a filterable three-column grid. Each product "
        "card displays an image, name, category tag, description, price (RM), and a "
        "\"View Details\" overlay on hover. Category filter buttons (All, Handbags, "
        "Shoes, Dresses, Accessories) toggle visibility using JavaScript and server-side "
        "ViewState tracking. The code-behind manages filter button states and stores the "
        "selected category.",
        ss["Body"]
    ))

    story.append(Paragraph("Lookbook.aspx (Lookbook / Blog)", ss["SubTitle"]))
    story.append(Paragraph(
        "A fashion journal page with a large featured article, a six-article grid "
        "covering styling tips and seasonal trends, four quick styling tip cards, and a "
        "newsletter subscription section. The code-behind validates the email input "
        "(empty check and basic format validation) and displays success or error messages.",
        ss["Body"]
    ))

    # ── 5. Libraries & Frameworks ──
    story.append(Paragraph("5. Libraries and Frameworks Used", ss["SectionTitle"]))
    story.append(section_hr())

    story.append(Paragraph("Backend", ss["SubTitle"]))
    story.append(Paragraph(
        "<b>ASP.NET Web Forms</b> (.NET Framework 4.7.2) &ndash; server-side web framework",
        ss["BulletItem"], bulletText="\u2022"
    ))
    story.append(Paragraph(
        "<b>C#</b> &ndash; programming language for code-behind logic",
        ss["BulletItem"], bulletText="\u2022"
    ))
    story.append(Paragraph(
        "<b>Microsoft.CodeDom.Providers.DotNetCompilerPlatform 2.0.1</b> &ndash; Roslyn "
        "compiler provider (NuGet package)",
        ss["BulletItem"], bulletText="\u2022"
    ))
    story.append(Paragraph(
        "<b>IIS Express</b> &ndash; development web server (HTTPS on port 44323)",
        ss["BulletItem"], bulletText="\u2022"
    ))

    story.append(Paragraph("Frontend", ss["SubTitle"]))
    story.append(Paragraph(
        "<b>HTML5</b> &ndash; semantic page markup",
        ss["BulletItem"], bulletText="\u2022"
    ))
    story.append(Paragraph(
        "<b>CSS3</b> &ndash; custom properties, Grid, Flexbox, keyframe animations",
        ss["BulletItem"], bulletText="\u2022"
    ))
    story.append(Paragraph(
        "<b>Vanilla JavaScript (ES6+)</b> &ndash; all interactivity without external libraries",
        ss["BulletItem"], bulletText="\u2022"
    ))
    story.append(Paragraph(
        "<b>SVG</b> &ndash; inline vector icons for navigation and social links",
        ss["BulletItem"], bulletText="\u2022"
    ))

    story.append(Paragraph("External Resources", ss["SubTitle"]))
    story.append(Paragraph(
        "<b>Google Fonts</b> &ndash; Cormorant Garamond (serif) and Raleway (sans-serif)",
        ss["BulletItem"], bulletText="\u2022"
    ))
    story.append(Spacer(1, 4))
    story.append(Paragraph(
        "No external JavaScript frameworks (jQuery, React, etc.) or CSS frameworks "
        "(Bootstrap, Tailwind, etc.) are used. All styling and interactivity is "
        "custom-built, demonstrating full control over design and behaviour.",
        ss["Body"]
    ))

    # ── 6. Error Handling ──
    story.append(Paragraph("6. Error Handling", ss["SectionTitle"]))
    story.append(section_hr())
    story.append(Paragraph(
        "The website implements error handling appropriate to its scope as a static, "
        "content-driven fashion brand site with no database or external API dependencies.",
        ss["Body"]
    ))

    story.append(Paragraph("Server-Side Validation (Lookbook Page)", ss["SubTitle"]))
    story.append(Paragraph(
        "The newsletter subscription form performs server-side validation in "
        "Lookbook.aspx.cs:", ss["Body"]
    ))
    story.append(Paragraph(
        "<b>Empty input check</b> &ndash; verifies the email field is not blank.",
        ss["BulletItem"], bulletText="\u2022"
    ))
    story.append(Paragraph(
        "<b>Format validation</b> &ndash; checks that the email contains both \"@\" "
        "and \".\" characters.",
        ss["BulletItem"], bulletText="\u2022"
    ))
    story.append(Paragraph(
        "<b>User feedback</b> &ndash; displays colour-coded messages (.success green, "
        ".error red).",
        ss["BulletItem"], bulletText="\u2022"
    ))
    story.append(Paragraph(
        "<b>Form reset</b> &ndash; clears the input field after successful submission.",
        ss["BulletItem"], bulletText="\u2022"
    ))

    story.append(Paragraph("Client-Side Resilience", ss["SubTitle"]))
    story.append(Paragraph(
        "JavaScript features use defensive patterns to prevent runtime errors:",
        ss["Body"]
    ))
    story.append(Paragraph(
        "IntersectionObserver is used with safe iteration for lazy loading and "
        "scroll animations.",
        ss["BulletItem"], bulletText="\u2022"
    ))
    story.append(Paragraph(
        "DOM queries use querySelectorAll with null-safe forEach iteration.",
        ss["BulletItem"], bulletText="\u2022"
    ))
    story.append(Paragraph(
        "The custom cursor is hidden on mobile (under 768px) to avoid touch-device issues.",
        ss["BulletItem"], bulletText="\u2022"
    ))
    story.append(Paragraph(
        "Event listeners are attached only to elements confirmed to exist on the page.",
        ss["BulletItem"], bulletText="\u2022"
    ))

    story.append(Paragraph("Framework-Level Handling", ss["SubTitle"]))
    story.append(Paragraph(
        "The project relies on the default ASP.NET Web Forms error handling pipeline. "
        "The Global.asax file registers standard application-level events "
        "(Application_Start, Session_Start, Application_Error) with default "
        "implementations. Since the site is purely content-driven with no database "
        "connections, API calls, or user authentication, the risk surface for runtime "
        "errors is minimal.",
        ss["Body"]
    ))

    # Build
    doc.build(story)
    print(f"PDF generated: {output}")


if __name__ == "__main__":
    build_pdf()
