package com.fortnite.characterapi.controller;

import com.fortnite.characterapi.Service.CharacterService;
import com.fortnite.characterapi.entity.Character;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/characters")
@CrossOrigin(origins = "*")
public class CharacterController {
    
    @Autowired
    private CharacterService characterService;
    
    @GetMapping
    public List<Character> getAllCharacters() {
        return characterService.getAllCharacters();
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<Character> getCharacterById(@PathVariable Long id) {
        return characterService.getCharacterById(id)
            .map(ResponseEntity::ok)
            .orElse(ResponseEntity.notFound().build());
    }
    
    @PostMapping
    public ResponseEntity<Character> addCharacter(@RequestBody Character character) {
        Character newCharacter = characterService.addCharacter(character);
        return ResponseEntity.status(HttpStatus.CREATED).body(newCharacter);
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<Character> updateCharacter(@PathVariable Long id, 
                                                      @RequestBody Character character) {
        try {
            Character updated = characterService.updateCharacter(id, character);
            return ResponseEntity.ok(updated);
        } catch (RuntimeException e) {
            return ResponseEntity.notFound().build();
        }
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCharacter(@PathVariable Long id) {
        characterService.deleteCharacter(id);
        return ResponseEntity.noContent().build();
    }
    
    @GetMapping("/universe/{universe}")
    public List<Character> getByUniverse(@PathVariable String universe) {
        return characterService.getCharactersByUniverse(universe);
    }
    
    @GetMapping("/search")
    public List<Character> searchByName(@RequestParam String name) {
        return characterService.searchCharactersByName(name);
    }
}