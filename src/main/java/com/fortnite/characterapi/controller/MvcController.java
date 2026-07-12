package com.fortnite.characterapi.controller;

import com.fortnite.characterapi.entity.Character;
import com.fortnite.characterapi.service.CharacterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class MvcController {

    @Autowired
    private CharacterService characterService;

    // About page - no model needed
    @GetMapping("/about")
    public String about() {
        return "about";
    }

    // List all characters
    @GetMapping("/characters")
    public String listCharacters(Model model) {
        model.addAttribute("characterList", characterService.getAllCharacters());
        return "character-list";
    }

    // View one character's details
    @GetMapping("/characters/{id}")
    public String characterDetails(@PathVariable Long id, Model model) {
        Character character = characterService.getCharacterById(id)
                .orElseThrow(() -> new RuntimeException("Character not found with id: " + id));
        model.addAttribute("character", character);
        return "character-details";
    }

    // Show create form
    @GetMapping("/characters/new")
    public String showCreateForm(Model model) {
        model.addAttribute("character", new Character());
        return "character-create";
    }

    // Handle create form submission
    @PostMapping("/characters/new")
    public String createCharacter(@ModelAttribute Character character) {
        characterService.addCharacter(character);
        return "redirect:/characters";
    }

    // Show update form
    @GetMapping("/characters/update/{id}")
    public String showUpdateForm(@PathVariable Long id, Model model) {
        Character character = characterService.getCharacterById(id)
                .orElseThrow(() -> new RuntimeException("Character not found with id: " + id));
        model.addAttribute("character", character);
        model.addAttribute("title", "Update Character: " + character.getName());
        return "character-update";
    }

    // Handle update form submission
    @PostMapping("/characters/update/{id}")
    public String updateCharacter(@PathVariable Long id, @ModelAttribute Character character) {
        characterService.updateCharacter(id, character);
        return "redirect:/characters/" + id;
    }

    // Delete a character 
    @GetMapping("/characters/delete/{id}")
    public String deleteCharacter(@PathVariable Long id) {
        characterService.deleteCharacter(id);
        return "redirect:/characters";
    }

    // Home page redirect
    @GetMapping("/")
    public String home() {
        return "redirect:/characters";
    }
}