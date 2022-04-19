package com.techelevator.dao;

import com.techelevator.model.MealsRecipes;

import java.util.List;

public interface MealsRecipesDao {

    void addMealsRecipes(MealsRecipes mealsRecipes);

    List<MealsRecipes> getListByMealId(Long meal_id);

    void removeMealsRecipes(MealsRecipes mealsRecipes);

    void nukeByRecipeId(Long id);

}
