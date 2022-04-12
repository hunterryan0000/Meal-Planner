package com.techelevator.dao;

import com.techelevator.model.Recipe;

import java.util.List;

public interface RecipeDao {

    List<Recipe> getAll(Long userId);

    Recipe getRecipeById(Long recipeId, Long userId);

}
