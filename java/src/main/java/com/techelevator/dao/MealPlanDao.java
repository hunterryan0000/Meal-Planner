package com.techelevator.dao;

import com.techelevator.model.Day;
import com.techelevator.model.MealPlan;

import java.util.List;

public interface MealPlanDao {

    List<MealPlan> getAll(Long userId);

    MealPlan getMealPlanById(Long mealPlanId, Long userId);

    MealPlan addMealPlan(MealPlan mealPlan);

    void deleteMealPlan(MealPlan mealPlan);
}
