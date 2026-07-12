<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${character.name} - Fortnite Dream Locker</title>
    <link rel="stylesheet" href="/css/design.css">
    <style>
        .back-link {
            color: var(--fortnite-blue);
            text-decoration: none;
            font-weight: 600;
            display: inline-block;
            margin-bottom: 30px;
            transition: all 0.3s ease;
        }

        .back-link:hover {
            color: var(#c9a84c);
            transform: translateX(-5px);
        }

        .character-profile {
            display: grid;
            grid-template-columns: 1fr 1.5fr;
            gap: 40px;
            background: var(--card-bg);
            border: 1px solid var(--card-border);
            border-radius: var(--radius);
            padding: 30px;
        }

        .profile-left {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .profile-image {
            position: relative;
        }

        .profile-image img {
            width: 100%;
            height: auto;
            border-radius: var(--radius);
            border: 2px solid var(--card-border);
        }

        .rarity-badge.large {
            position: absolute;
            top: 15px;
            right: 15px;
            padding: 6px 18px;
            font-size: 0.8rem;
            background: rgba(0, 0, 0, 0.85);
            border: 2px solid #c9a84c;
            color: #c9a84c;
            border-radius: 20px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .loadout-mini {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 10px;
            background: rgba(0, 0, 0, 0.3);
            border: 1px solid var(--card-border);
            border-radius: var(--radius);
            padding: 12px;
        }

        .loadout-mini-item {
            text-align: center;
            padding: 8px 5px;
            background: rgba(255, 255, 255, 0.03);
            border-radius: 8px;
            transition: all 0.3s ease;
        }

        .loadout-mini-item:hover {
            background: rgba(0, 212, 255, 0.05);
            border-color: var(#c9a84c);
        }

        .loadout-mini-item .mini-icon {
            font-size: 1.8rem;
            display: block;
        }

        .loadout-mini-item .mini-name {
            font-size: 0.6rem;
            color: var(--text-muted);
            display: block;
            margin-top: 2px;
        }

        .loadout-mini-item .mini-type {
            font-size: 0.5rem;
            color: var(--text-muted);
            opacity: 0.6;
            text-transform: uppercase;
            display: block;
        }

        .profile-content h1 {
            font-size: 2.5rem;
            color: var();
            margin-bottom: 12px;
        }

        .profile-tags {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            margin-bottom: 20px;
        }

        .profile-tags .tag {
            padding: 4px 14px;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--card-border);
            border-radius: 20px;
            font-size: 0.8rem;
            color: var(--text-muted);
        }

        .profile-stats {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 15px;
            margin-bottom: 25px;
        }

        .stat-box {
            background: rgba(255, 255, 255, 0.05);
            padding: 12px;
            border-radius: var(--radius);
            text-align: center;
            border: 1px solid var(--card-border);
        }

        .stat-label {
            display: block;
            font-size: 0.7rem;
            text-transform: uppercase;
            color: var(--text-muted);
            letter-spacing: 1px;
        }

        .stat-value {
            display: block;
            font-size: 1.1rem;
            font-weight: 700;
            color: var(#c9a84c);
            margin-top: 4px;
        }

        .profile-bio h2 {
            background: linear-gradient(135deg, #ff8834, #ffc039f6);
            font-size: 1.2rem;
            margin: 15px 0 8px 0;
        }

        .profile-bio p {
            color: var(--text-muted);
            margin-bottom: 10px;
            line-height: 1.6;
            font-size: 0.95rem;
        }

        .ability-list {
            list-style: none;
            padding: 0;
        }

        .ability-list li {
            padding: 8px 12px;
            margin-bottom: 6px;
            background: rgba(255, 255, 255, 0.03);
            border-left: 3px solid var(--fortnite-blue);
            color: var(--text-muted);
            border-radius: 4px;
            font-size: 0.9rem;
        }

        .ability-list li strong {
            color: var(--text-light);
        }

        .quote {
            font-style: italic;
            color: var(--fortnite-gold);
            font-size: 1rem;
            padding: 10px 0;
            border-top: 1px solid var(--card-border);
            margin-top: 10px;
        }

        .profile-actions {
            display: flex;
            gap: 10px;
            margin-top: 20px;
        }

        .btn-edit {
            padding: 10px 25px;
            background: var(--fortnite-blue);
            border: none;
            border-radius: var(--radius);
            color: var(--primary-dark);
            font-weight: 700;
            font-size: 0.9rem;
            cursor: pointer;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .btn-edit:hover {
            transform: scale(1.05);
            box-shadow: 0 0 20px rgba(0, 212, 255, 0.3);
        }

        .btn-delete {
            padding: 10px 25px;
            background: #ff4444;
            border: none;
            border-radius: var(--radius);
            color: white;
            font-weight: 700;
            font-size: 0.9rem;
            cursor: pointer;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .btn-delete:hover {
            background: #cc0000;
            transform: scale(1.05);
        }

        @media (max-width: 768px) {
            .character-profile {
                grid-template-columns: 1fr;
                padding: 20px;
            }

            .profile-stats {
                grid-template-columns: 1fr;
            }

            .loadout-mini {
                grid-template-columns: repeat(3, 1fr);
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
                <li><a href="/characters/1" class="active">Details</a></li>
                <li><a href="/about">About</a></li>
                <li><a href="/characters/new">New Skins</a></li>
            </ul>
        </div>
    </nav>

    <main class="container">
        <section class="details-section">

            <a href="/characters" class="back-link">← Back to Gallery</a>

            <div class="character-profile">

                <div class="profile-left">
                    <div class="profile-image">
                        <img src="${character.imageUrl}" alt="${character.name}">
                        <span class="rarity-badge large">${character.rarity}</span>
                    </div>

                    <div class="loadout-mini">
                        <div class="loadout-mini-item">
                            <span class="mini-icon">⛏️</span>
                            <span class="mini-name">${character.pickaxe}</span>
                            <span class="mini-type">Pickaxe</span>
                        </div>
                        <div class="loadout-mini-item">
                            <span class="mini-icon">🪂</span>
                            <span class="mini-name">${character.glider}</span>
                            <span class="mini-type">Glider</span>
                        </div>
                        <div class="loadout-mini-item">
                            <span class="mini-icon">💃</span>
                            <span class="mini-name">${character.emote}</span>
                            <span class="mini-type">Emote</span>
                        </div>
                    </div>
                </div>

                <div class="profile-content">
                    <h1>${character.name}</h1>

                    <div class="profile-tags">
                        <span class="tag"> ${character.rarity}</span>
                        <span class="tag"> ${character.role}</span>
                        <span class="tag"> ${character.universe}</span>
                    </div>

                    <div class="profile-stats">
                        <div class="stat-box">
                            <span class="stat-label">Release Date</span>
                            <span class="stat-value">${character.releaseDate}</span>
                        </div>
                        <div class="stat-box">
                            <span class="stat-label">Cost</span>
                            <span class="stat-value">${character.costVbucks} V-Bucks</span>
                        </div>
                        <div class="stat-box">
                            <span class="stat-label">Rarity</span>
                            <span class="stat-value">${character.rarity}</span>
                        </div>
                    </div>

                    <div class="profile-bio">
                        <h2>Description</h2>
                        <p>${character.description}</p>
                    </div>

                    <div class="profile-actions">
                        <a href="/characters/update/${character.characterId?c}" class="btn-edit">✏️ Edit Character</a>
                        <a href="/characters/delete/${character.characterId?c}" class="btn-delete" onclick="return confirm('Are you sure you want to delete ${character.name}?')">🗑️ Delete</a>
                    </div>
                </div>
            </div>

        </section>
    </main>

    <footer class="footer">
        <p>Dream Locker Gallery - Build your dream team!</p>
        <p class="footer-small">All Fortnite skins are for educational purposes only.</p>
    </footer>

</body>
</html>