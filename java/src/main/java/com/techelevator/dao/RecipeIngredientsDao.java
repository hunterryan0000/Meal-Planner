package com.techelevator.dao;

import com.techelevator.model.Ingredient;
import com.techelevator.model.RecipeIngredients;

import java.util.List;

public interface RecipeIngredientsDao {

    void addRecipeIngredients(RecipeIngredients recipe_ingredients);

    List<RecipeIngredients> getListByRecipeId(Long recipe_id);
}
