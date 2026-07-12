<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About - Fortnite Dream Locker</title>
    <link rel="stylesheet" href="/css/design.css">
    <style>
        .about-container {
            max-width: 900px;
            margin: 0 auto;
            padding: 20px 0 60px 0;
        }

        .about-header {
            text-align: center;
            padding: 30px 0 20px 0;
        }

        .about-header h1 {
         font-size: 3rem;
         margin-bottom: 10px;
         letter-spacing: 2px;
         background: linear-gradient(135deg, #ff8ed0ec, #ffec81);
         -webkit-background-clip: text;
         -webkit-text-fill-color: transparent;
         background-clip: text;
}

        .about-header p {
            color: var(--text-muted);
            font-size: 1.1rem;
        }

        .about-content {
            background: var(--card-bg);
            border: 1px solid var(--card-border);
            border-radius: var(--radius);
            padding: 35px;
            margin-top: 20px;
        }

        .about-image {
            text-align: center;
            margin-bottom: 25px;
        }

        .about-image img {
            max-width: 100%;
            max-height: 300px;
            border-radius: var(--radius);
            border: 2px solid var(--card-border);
        }

        .about-image .image-caption {
            color: var(--text-muted);
            font-size: 0.8rem;
            margin-top: 8px;
            font-style: italic;
        }

        .image-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            margin: 20px 0;
        }

        .image-row .about-image {
            margin-bottom: 0;
        }

        .image-row .about-image img {
            max-height: 200px;
            width: 100%;
            object-fit: cover;
        }

        .about-content h2 {
         font-size: 1.3rem;
         margin: 25px 0 10px 0;
         background:linear-gradient(135deg, #a9eefeec, #ffb770);
         -webkit-background-clip: text;
         -webkit-text-fill-color: transparent;
         background-clip: text;
}

        .about-content h2:first-of-type {
            margin-top: 0;
        }

        .about-content p {
            color: var(--text-muted);
            line-height: 1.8;
            margin-bottom: 12px;
        }

        .about-footer-text {
            text-align: center;
            color: var(--text-muted);
            font-size: 0.9rem;
            margin-top: 20px;
            padding-top: 20px;
            border-top: 1px solid var(--card-border);
        }

        @media (max-width: 768px) {
            .about-content {
                padding: 20px;
            }

            .about-header h1 {
                font-size: 2.2rem;
            }

            .about-image img {
                max-height: 200px;
            }

            .image-row {
                grid-template-columns: 1fr;
                gap: 15px;
            }

            .image-row .about-image img {
                max-height: 150px;
            }
        }
    </style>
</head>
<body>

    <nav class="navbar">
        <div class="nav-container">
            <div class="nav-brand">
                <span class="brand-text">Fortnite Dream Locker</span>
            </div>
            <ul class="nav-links">
                 <li><a href="/characters">Home</a></li>
                 <li><a href="/characters/1">Details</a></li>
                 <li><a href="/about" class="active">About</a></li>
                 <li><a href="/characters/new">New Skins</a></li>
            </ul>
        </div>
    </nav>

    <main class="container">
        <section class="about-container">
            <div class="about-header">
                <h1>About This Gallery</h1>
                <p>Learn more about our Fortnite character collection.</p>
            </div>

            <div class="about-content">

                <div class="about-image">
                    <img src="/assets/images/fortniteAbout.webp" alt="Fortnite Locker Concept">
                </div>

                <h2>Welcome to the Fortnite Dream Locker</h2>
                <p>
                    The Fortnite Dream Locker showcases iconic characters from the Fortnite universe. 
                    From the OG Renegade Raider to the legendary Kratos and Black Knight, this gallery 
                    celebrates the diverse and colorful roster of skins that have made Fortnite one of 
                    the most popular games in the world.
                </p>

                <div class="image-row">
                    <div class="about-image">
                        <img src="/assets/images/fortnite-collabs-4.webp" alt="Ariana Grande Collab">
                        <p class="image-caption">Collab with Ariana Grande</p>
                    </div>

                    <div class="about-image">
                        <img src="/assets/images/simpson_collab.png" alt="The Simpsons Collab">
                        <p class="image-caption">Collab with The Simpsons</p>
                    </div>
                </div>

                <h2>Data & Attribution</h2>
                <p>
                    The characters featured in this gallery are from the Fortnite universe, specifically 
                    from various seasons and crossover events. All character descriptions and abilities 
                    are based on their appearances in official Fortnite productions. Images are sourced 
                    from public stock photo services and official Fortnite promotional materials for 
                    educational demonstration purposes.
                </p>


        </section>
    </main>

    <footer class="footer">
        <p>Dream Locker Gallery - Build your dream team!</p>
        <p class="footer-small">All Fortnite skins are for educational purposes only.</p>
    </footer>

</body>
</html>