package com.techelevator.dao;

import com.techelevator.model.Day;
import com.techelevator.model.MealsMealPlan;

import java.util.List;

public interface MealsMealPlanDao {

    void add(MealsMealPlan mealsMealPlan);

    List<MealsMealPlan> mapDaytoMealsMealPlan(Day day, Long mealplan_id);

    List<Day> getDaysByMealPlanId(Long mealplan_id, int totalDays, Long user_id);

    void removeMealPlanMeals(MealsMealPlan mealsMealPlan);

    void nukeByMealPlanId(Long id);

    void nukeByMealId(Long id);

}
