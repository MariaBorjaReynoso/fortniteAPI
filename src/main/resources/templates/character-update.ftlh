<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Character - Fortnite Dream Locker</title>
    <link rel="stylesheet" href="/css/design.css">
    <style>
        .form-container {
            max-width: 700px;
            margin: 0 auto;
            padding: 20px 0 60px 0;
        }

        .form-header {
            text-align: center;
            padding: 30px 0 20px 0;
        }

        .form-header h1 {
            font-size: 2.8rem;
            color: var(--fortnite-gold);
            margin-bottom: 10px;
            letter-spacing: 2px;
        }

        .form-header p {
            color: var(--text-muted);
            font-size: 1.1rem;
        }

        .character-form {
            background: var(--card-bg);
            border: 1px solid var(--card-border);
            border-radius: var(--radius);
            padding: 35px;
            margin-top: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: 600;
            color: var(--text-light);
            margin-bottom: 6px;
            font-size: 0.95rem;
        }

        .form-group label .required {
            color: #ff6b6b;
        }

        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 12px 16px;
            background: rgba(255, 255, 255, 0.05);
            border: 2px solid var(--card-border);
            border-radius: var(--radius);
            color: var(--text-light);
            font-size: 1rem;
            transition: all 0.3s ease;
            font-family: inherit;
        }

        .form-group input:focus,
        .form-group select:focus,
        .form-group textarea:focus {
            outline: none;
            border-color: var(--fortnite-blue);
            box-shadow: 0 0 20px rgba(0, 212, 255, 0.1);
        }

        .form-group select option {
            background: var(--primary-dark);
            color: var(--text-light);
        }

        .form-group textarea {
            resize: vertical;
            min-height: 100px;
        }

        .form-group .hint {
            display: block;
            color: var(--text-muted);
            font-size: 0.8rem;
            margin-top: 4px;
        }

        .form-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        .form-actions {
            display: flex;
            gap: 15px;
            justify-content: flex-end;
            margin-top: 10px;
        }

        .btn-primary {
            padding: 12px 35px;
            background: var(--fortnite-gold);
            border: none;
            border-radius: var(--radius);
            color: var(--primary-dark);
            font-weight: 700;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-primary:hover {
            transform: scale(1.05);
            box-shadow: 0 0 30px rgba(255, 215, 0, 0.3);
        }

        .btn-secondary {
            padding: 12px 35px;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--card-border);
            border-radius: var(--radius);
            color: var(--text-muted);
            font-weight: 600;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-secondary:hover {
            background: rgba(255, 255, 255, 0.1);
            color: var(--text-light);
        }

        .btn-cancel {
            padding: 12px 35px;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--card-border);
            border-radius: var(--radius);
            color: var(--text-muted);
            font-weight: 600;
            font-size: 1rem;
            cursor: pointer;
            text-decoration: none;
            transition: all 0.3s ease;
            display: inline-block;
        }

        .btn-cancel:hover {
            background: rgba(255, 255, 255, 0.1);
            color: var(--text-light);
        }

        @media (max-width: 768px) {
            .form-row {
                grid-template-columns: 1fr;
                gap: 0;
            }

            .character-form {
                padding: 20px;
            }

            .form-header h1 {
                font-size: 2.2rem;
            }

            .form-actions {
                flex-direction: column;
            }

            .form-actions button,
            .form-actions a {
                width: 100%;
                text-align: center;
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
                <li><a href="/about">About</a></li>
                <li><a href="/characters/new">New Skins</a></li>
            </ul>
        </div>
    </nav>

    <main class="container">
        <section class="form-container">

            <div class="form-header">
                <h1>Update Character</h1>
                <p>Edit the details for ${character.name}</p>
            </div>

            <form class="character-form" action="/characters/update/${character.characterId?c}" method="POST">

                <div class="form-row">
                    <div class="form-group">
                        <label for="character-name">Character Name <span class="required">*</span></label>
                        <input type="text" id="character-name" name="name" value="${character.name}" placeholder="e.g., Ghoul Trooper" required>
                    </div>

                    <div class="form-group">
                        <label for="character-universe">Universe <span class="required">*</span></label>
                        <select id="character-universe" name="universe" required>
                            <option value="${character.universe}" selected>${character.universe} (current)</option>
                            <option value="Icon">Icon</option>
                            <option value="Gaming">Gaming</option>
                            <option value="Crew">Crew</option>
                            <option value="Marvel">Marvel</option>
                            <option value="DC">DC</option>
                            <option value="Star Wars">Star Wars</option>
                            <option value="Frozen">Frozen</option>
                            <option value="Lava">Lava</option>
                            <option value="Dark">Dark</option>
                            <option value="Shadow">Shadow</option>
                            <option value="Slurp">Slurp</option>
                        </select>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="character-role">Role <span class="required">*</span></label>
                        <input type="text" id="character-role" name="role" value="${character.role}" placeholder="e.g., OG Survivor" required>
                    </div>

                    <div class="form-group">
                        <label for="character-rarity">Rarity <span class="required">*</span></label>
                        <select id="character-rarity" name="rarity" required>
                            <option value="${character.rarity}" selected>${character.rarity} (current)</option>
                            <option value="Common">Common</option>
                            <option value="Uncommon">Uncommon</option>
                            <option value="Rare">Rare</option>
                            <option value="Epic">Epic</option>
                            <option value="Legendary">Legendary</option>
                            <option value="Gaming Legend Series">Gaming Legend Series</option>
                        </select>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="character-season">Season / Release Date</label>
                        <input type="text" id="character-season" name="releaseDate" value="${character.releaseDate}" placeholder="e.g., Chapter 1, Season 2">
                    </div>

                    <div class="form-group">
                        <label for="character-cost">Cost (V-Bucks)</label>
                        <input type="number" id="character-cost" name="costVbucks" value="${character.costVbucks}" placeholder="e.g., 1200" min="0">
                    </div>
                </div>

                <div class="form-group">
                    <label for="character-image">Image URL <span class="required">*</span></label>
                    <input type="url" id="character-image" name="imageUrl" value="${character.imageUrl}" placeholder="https://example.com/character.png" required>
                    <span class="hint">Paste a URL to your character's image</span>
                </div>

                <div class="form-group">
                    <label for="character-description">Short Description <span class="required">*</span></label>
                    <textarea id="character-description" name="description" rows="4" placeholder="Describe the character in 1-2 sentences..." required>${character.description}</textarea>
                </div>

                <div class="form-group">
                    <label for="character-pickaxe">Pickaxe</label>
                    <input type="text" id="character-pickaxe" name="pickaxe" value="${character.pickaxe}" placeholder="e.g., Ice Breaker">
                </div>

                <div class="form-group">
                    <label for="character-glider">Glider</label>
                    <input type="text" id="character-glider" name="glider" value="${character.glider}" placeholder="e.g., Shattered Wing">
                </div>

                <div class="form-group">
                    <label for="character-emote">Emote</label>
                    <input type="text" id="character-emote" name="emote" value="${character.emote}" placeholder="e.g., Popular Vibe">
                </div>

                <div class="form-actions">
                    <a href="/characters/${character.characterId?c}" class="btn-cancel">Cancel</a>
                    <button type="submit" class="btn-primary">Update Character</button>
                </div>

            </form>

        </section>
    </main>

    <footer class="footer">
        <p>Dream Locker Gallery - Build your dream team!</p>
        <p class="footer-small">All Fortnite skins are for educational purposes only.</p>
    </footer>

</body>
</html>