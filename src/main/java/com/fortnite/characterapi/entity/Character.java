package com.fortnite.characterapi.entity; 

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "characters")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Character {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long characterId;
    
    @Column(nullable = false)
    private String name;
    
    @Column(nullable = false, length = 1000)
    private String description;
    
    private String releaseDate;
    private Integer costVbucks;
    private String rarity;
    private String universe;
    private String imageUrl;
    private String role;
    private String pickaxe;
    private String glider;
    private String emote;
}