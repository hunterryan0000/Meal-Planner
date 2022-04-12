package com.techelevator.model;

import java.util.List;

public class Recipe {

    private Long id;

    private Long user_id;

    private String name;

    private String description;

    private String instructions;

    private int servings;

    private int difficulty;

    private String photo_url;

    public String getPhoto_url() {
        return photo_url;
    }

    public void setPhoto_url(String photo_url) {
        this.photo_url = photo_url;
    }

    private List<RecipeIngredients> ingredientList;

    private List<Appliance> applianceList;

    public List<RecipeIngredients> getIngredientList() {
        return ingredientList;
    }

    public void setIngredientList(List<RecipeIngredients> ingredientList) {
        this.ingredientList = ingredientList;
    }

    public List<Appliance> getApplianceList() {
        return applianceList;
    }

    public void setApplianceList(List<Appliance> applianceList) {
        this.applianceList = applianceList;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUser_id() {
        return user_id;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getInstructions() {
        return instructions;
    }

    public void setInstructions(String instructions) {
        this.instructions = instructions;
    }

    public int getServings() {
        return servings;
    }

    public void setServings(int servings) {
        this.servings = servings;
    }

    public int getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(int difficulty) {
        this.difficulty = difficulty;
    }
}
