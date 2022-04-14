package com.techelevator.dao;

import com.techelevator.model.Meal;

import java.util.List;

public interface MealDao {

    List<Meal> getAll(Long userId);

    Meal getMealById(Long mealId, Long userId);

    Meal addMeal(Meal meal);

    Meal modifyMeal(Meal meal);

    void deleteMeal(Meal meal);

}
