// Amoret Fashion - Interactive JavaScript

document.addEventListener('DOMContentLoaded', function () {

    // Smooth scroll for navigation links
    const navLinks = document.querySelectorAll('.nav-menu a');
    navLinks.forEach(link => {
        link.addEventListener('click', function (e) {
            // Only prevent default for anchor links
            if (this.getAttribute('href').startsWith('#')) {
                e.preventDefault();
                const targetId = this.getAttribute('href');
                const targetSection = document.querySelector(targetId);
                if (targetSection) {
                    targetSection.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            }
        });
    });

    // Navbar scroll effect
    let lastScroll = 0;
    const navbar = document.querySelector('.main-nav');

    window.addEventListener('scroll', function () {
        const currentScroll = window.pageYOffset;

        if (currentScroll > 100) {
            navbar.style.boxShadow = '0 2px 20px rgba(74, 67, 63, 0.1)';
        } else {
            navbar.style.boxShadow = 'none';
        }

        lastScroll = currentScroll;
    });

    // Collection filter functionality
    const filterButtons = document.querySelectorAll('.filter-btn');
    const collectionItems = document.querySelectorAll('.collection-item');

    if (filterButtons.length > 0) {
        filterButtons.forEach(button => {
            button.addEventListener('click', function () {
                // Get the category from the button's command argument
                const category = this.getAttribute('data-category') ||
                    this.textContent.toLowerCase().trim();

                // Update active button (handled by ASP.NET, but we can add visual feedback)
                filterButtons.forEach(btn => btn.classList.remove('active'));
                this.classList.add('active');

                // Filter items
                collectionItems.forEach(item => {
                    const itemCategory = item.getAttribute('data-category');

                    if (category === 'all' || itemCategory === category) {
                        item.style.display = 'block';
                        item.style.animation = 'fadeIn 0.6s ease-out';
                    } else {
                        item.style.display = 'none';
                    }
                });
            });
        });
    }

    // Parallax effect for hero images
    const heroImage = document.querySelector('.hero-image');

    if (heroImage) {
        window.addEventListener('scroll', function () {
            const scrolled = window.pageYOffset;
            const parallaxSpeed = 0.5;
            heroImage.style.transform = `translateY(${scrolled * parallaxSpeed}px)`;
        });
    }

    // Image lazy loading effect
    const images = document.querySelectorAll('img');

    const imageObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const img = entry.target;
                img.style.opacity = '0';
                img.style.transition = 'opacity 0.6s ease-in';

                // Simulate loading
                setTimeout(() => {
                    img.style.opacity = '1';
                }, 100);

                observer.unobserve(img);
            }
        });
    }, {
        threshold: 0.1
    });

    images.forEach(img => {
        imageObserver.observe(img);
    });

    // Animate cards on scroll
    const animateOnScroll = () => {
        const cards = document.querySelectorAll('.featured-card, .collection-item, .article-card, .philosophy-card, .tip-card');

        const cardObserver = new IntersectionObserver((entries) => {
            entries.forEach((entry, index) => {
                if (entry.isIntersecting) {
                    setTimeout(() => {
                        entry.target.style.opacity = '1';
                        entry.target.style.transform = 'translateY(0)';
                    }, index * 100);
                }
            });
        }, {
            threshold: 0.2
        });

        cards.forEach(card => {
            card.style.opacity = '0';
            card.style.transform = 'translateY(30px)';
            card.style.transition = 'opacity 0.6s ease-out, transform 0.6s ease-out';
            cardObserver.observe(card);
        });
    };

    animateOnScroll();

    // Hover effects for featured cards
    const featuredCards = document.querySelectorAll('.featured-card');

    featuredCards.forEach(card => {
        card.addEventListener('mouseenter', function () {
            this.style.transform = 'translateY(-15px) scale(1.02)';
        });

        card.addEventListener('mouseleave', function () {
            this.style.transform = 'translateY(0) scale(1)';
        });
    });

    // Newsletter form validation enhancement
    const newsletterInput = document.querySelector('.newsletter-input');

    if (newsletterInput) {
        newsletterInput.addEventListener('focus', function () {
            this.style.borderColor = 'var(--color-accent)';
        });

        newsletterInput.addEventListener('blur', function () {
            if (this.value === '') {
                this.style.borderColor = 'var(--color-contrast)';
            }
        });
    }

    // Add stagger animation to navigation items
    const navItems = document.querySelectorAll('.nav-menu li');
    navItems.forEach((item, index) => {
        item.style.opacity = '0';
        item.style.transform = 'translateY(-10px)';
        item.style.transition = 'opacity 0.4s ease-out, transform 0.4s ease-out';

        setTimeout(() => {
            item.style.opacity = '1';
            item.style.transform = 'translateY(0)';
        }, 100 + (index * 50));
    });

    // Button ripple effect
    const buttons = document.querySelectorAll('.cta-button, .read-more-btn, .filter-btn, .view-btn, .subscribe-btn');

    buttons.forEach(button => {
        button.addEventListener('click', function (e) {
            const ripple = document.createElement('span');
            const rect = this.getBoundingClientRect();
            const size = Math.max(rect.width, rect.height);
            const x = e.clientX - rect.left - size / 2;
            const y = e.clientY - rect.top - size / 2;

            ripple.style.width = ripple.style.height = size + 'px';
            ripple.style.left = x + 'px';
            ripple.style.top = y + 'px';
            ripple.classList.add('ripple');

            this.appendChild(ripple);

            setTimeout(() => {
                ripple.remove();
            }, 600);
        });
    });

    // Add custom cursor effect (optional, for enhanced experience)
    const cursor = document.createElement('div');
    cursor.classList.add('custom-cursor');
    document.body.appendChild(cursor);

    let cursorX = 0;
    let cursorY = 0;
    let targetX = 0;
    let targetY = 0;

    document.addEventListener('mousemove', (e) => {
        targetX = e.clientX;
        targetY = e.clientY;
    });

    function animateCursor() {
        cursorX += (targetX - cursorX) * 0.1;
        cursorY += (targetY - cursorY) * 0.1;

        cursor.style.left = cursorX + 'px';
        cursor.style.top = cursorY + 'px';

        requestAnimationFrame(animateCursor);
    }

    animateCursor();

    // Enlarge cursor on hoverable elements
    const hoverables = document.querySelectorAll('a, button, .featured-card, .collection-item, .article-card');

    hoverables.forEach(el => {
        el.addEventListener('mouseenter', () => {
            cursor.style.transform = 'scale(2)';
        });

        el.addEventListener('mouseleave', () => {
            cursor.style.transform = 'scale(1)';
        });
    });

    // Animate text on scroll
    const animateText = () => {
        const textElements = document.querySelectorAll('h1, h2, h3, .tagline, .page-subtitle');

        const textObserver = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                }
            });
        }, {
            threshold: 0.3
        });

        textElements.forEach(el => {
            el.style.opacity = '0';
            el.style.transform = 'translateY(20px)';
            el.style.transition = 'opacity 0.8s ease-out, transform 0.8s ease-out';
            textObserver.observe(el);
        });
    };

    animateText();

    console.log('Amoret Fashion - Website loaded successfully');
});

// Add CSS for ripple effect dynamically
const style = document.createElement('style');
style.textContent = `
    .ripple {
        position: absolute;
        border-radius: 50%;
        background: rgba(255, 255, 255, 0.5);
        pointer-events: none;
        animation: ripple-animation 0.6s ease-out;
    }
    
    @keyframes ripple-animation {
        to {
            transform: scale(2);
            opacity: 0;
        }
    }
    
    .custom-cursor {
        width: 20px;
        height: 20px;
        border: 2px solid var(--color-accent);
        border-radius: 50%;
        position: fixed;
        pointer-events: none;
        z-index: 9999;
        transform: translate(-50%, -50%);
        transition: transform 0.2s ease;
        mix-blend-mode: difference;
    }
    
    @media (max-width: 768px) {
        .custom-cursor {
            display: none;
        }
    }
`;
document.head.appendChild(style);