package com.techelevator.dao;

import com.techelevator.model.Appliance;
import com.techelevator.model.Ingredient;

import java.util.List;

public interface IngredientDao {

    List<Ingredient> getSearch(String searchTerm);

    List<Ingredient> getListByRecipeId(Long recipe_id);
}
