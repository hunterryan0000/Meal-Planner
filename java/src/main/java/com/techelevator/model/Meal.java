package com.techelevator.model;

import java.util.List;

public class Meal {

    private Long user_id;

    private Long id;

    private String description;

    private String name;

    private String type_of_meal;

    private int servings;

    private List<MealsRecipes> mealsRecipesList;

    public Long getUser_id() {
        return user_id;
    }

    public List<MealsRecipes> getMealsRecipesList() {
        return mealsRecipesList;
    }

    public void setMealsRecipesList(List<MealsRecipes> mealsRecipesList) {
        this.mealsRecipesList = mealsRecipesList;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType_of_meal() {
        return type_of_meal;
    }

    public void setType_of_meal(String type_of_meal) {
        this.type_of_meal = type_of_meal;
    }

    public int getServings() {
        return servings;
    }

    public void setServings(int servings) {
        this.servings = servings;
    }
}
