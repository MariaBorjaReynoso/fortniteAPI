# Fortnite Character API

A RESTful API for managing Fortnite characters using Spring Boot, PostgreSQL, and JPA.

## Deployed API

- **Base URL:** https://fortniteapi-zzj8.onrender.com

## API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/characters` | Get all characters |
| GET | `/api/characters/{id}` | Get a character by ID |
| POST | `/api/characters` | Add a new character |
| PUT | `/api/characters/{id}` | Update an existing character |
| DELETE | `/api/characters/{id}` | Delete a character |
| GET | `/api/characters/universe/{universe}` | Get characters by universe |
| GET | `/api/characters/search?name={name}` | Search characters by name |

## Example Request - Add a Character (POST)

**Endpoint:** `POST https://fortniteapi-zzj8.onrender.com/api/characters`

**Request Body (JSON):**
```json
{
    "name": "Renegade Raider",
    "description": "One of the rarest OG skins in Fortnite history, first released in 2017. It vanished from the Item Shop for nine years, with many believing it was gone forever. In a shocking 2026 return, Epic Games proved even the rarest skins can come back.",
    "releaseDate": "Chapter 1, Season 1",
    "costVbucks": 1200,
    "rarity": "Rare",
    "universe": "Fortnite",
    "imageUrl": "https://example.com/renegade-raider.png",
    "role": "OG Survivor",
    "pickaxe": "Raider's Axe",
    "glider": "Victory Umbrella",
    "emote": "Floss"
}
