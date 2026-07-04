package com.fortnite.characterapi.Service;

import com.fortnite.characterapi.Repository.CharacterRepository;
import com.fortnite.characterapi.entity.Character;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class CharacterService {
    
    @Autowired
    private CharacterRepository characterRepository;
    
    public List<Character> getAllCharacters() {
        return characterRepository.findAll();
    }
    
    public Optional<Character> getCharacterById(Long id) {
        return characterRepository.findById(id);
    }
    
    public Character addCharacter(Character character) {
        return characterRepository.save(character);
    }
    
    public Character updateCharacter(Long id, Character characterDetails) {
        Character character = characterRepository.findById(id)
            .orElseThrow(() -> new RuntimeException("Character not found"));
        
        character.setName(characterDetails.getName());
        character.setDescription(characterDetails.getDescription());
        character.setReleaseDate(characterDetails.getReleaseDate());
        character.setCostVbucks(characterDetails.getCostVbucks());
        character.setRarity(characterDetails.getRarity());
        character.setUniverse(characterDetails.getUniverse());
        character.setImageUrl(characterDetails.getImageUrl());
        character.setRole(characterDetails.getRole());
        character.setPickaxe(characterDetails.getPickaxe());
        character.setGlider(characterDetails.getGlider());
        character.setEmote(characterDetails.getEmote());
        
        return characterRepository.save(character);
    }
    
    public void deleteCharacter(Long id) {
        characterRepository.deleteById(id);
    }
    
    public List<Character> getCharactersByUniverse(String universe) {
        return characterRepository.findByUniverse(universe);
    }
    
    public List<Character> searchCharactersByName(String name) {
        return characterRepository.findByNameContainingIgnoreCase(name);
    }
}