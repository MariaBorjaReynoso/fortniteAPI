<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fortnite Dream Locker</title>
    <link rel="stylesheet" href="/css/design.css">
</head>
<body>

    <nav class="navbar">
        <div class="nav-container">
            <div class="nav-brand">
                <span class="brand-text">Fortnite Dream Locker</span>
            </div>
            <ul class="nav-links">
                <li><a href="/characters" class="active">Home</a></li>
                <li><a href="/characters/1">Details</a></li>
                <li><a href="/about">About</a></li>
                <li><a href="/characters/new">New Skins</a></li>
            </ul>
        </div>
    </nav>

    <main class="container">

        <section class="search-section">
            <div class="search-container">
                <input type="text" id="searchInput" placeholder="Search for skins...">
                <button class="search-btn">Search</button>
            </div>
            <div class="filter-tags">
                <span class="filter-tag active">ALL</span>
                <span class="filter-tag">SKIN</span>
                <span class="filter-tag">PICKAXE</span> 
                <span class="filter-tag">BACKBLING</span> 
                <span class="filter-tag">EMOTE</span>
            </div>
        </section>

        <!-- Character Gallery Section -->
        <section class="gallery-grid">
            
            <#list characterList as character>
            <div class="character-card">
                <div class="card-image">
                    <img src="${character.imageUrl}" alt="${character.name}">
                    <span class="rarity-badge">${character.rarity}</span>
                </div>
                <div class="card-content">
                    <h3>${character.name}</h3>
                    <div class="card-details">
                        <span class="detail-tag">📅 Release Date: ${character.releaseDate}</span>
                        <span class="detail-tag">💰 Cost: ${character.costVbucks} V-Bucks</span>
                        <span class="detail-tag">⭐ Rarity: ${character.rarity}</span>
                    </div>
                    <p class="card-description">${character.description}</p>
                    <a href="/characters/${character.characterId?c}" class="btn-details">View Details →</a>
                </div>
            </div>
            </#list>

        </section>        
        
    </main>
    
    <footer class="footer">
        <p>Dream Locker Gallery build your dream team!</p>
        <p class="footer-small">All fortnite skins are for educational purposes only.</p>
    </footer>

</body>
</html>