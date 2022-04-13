package com.techelevator.dao;

import com.techelevator.model.Ingredient;
import com.techelevator.model.Recipe;

import java.util.List;

public interface RecipeDao {

    List<Recipe> getAll(Long userId);

    List<Recipe> getRecipes(String searchTerm);

    Recipe getRecipeById(Long recipeId, Long userId);

    Recipe addRecipe(Recipe recipe);

}
