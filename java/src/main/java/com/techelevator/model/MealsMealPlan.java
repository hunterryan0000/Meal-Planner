package com.techelevator.model;

public class MealsMealPlan {

    private Long mealplan_id;

    private Long meal_id;

    private Long day;

    public Long getMealplan_id() {
        return mealplan_id;
    }

    public void setMealplan_id(Long mealplan_id) {
        this.mealplan_id = mealplan_id;
    }

    public Long getMeal_id() {
        return meal_id;
    }

    public void setMeal_id(Long meal_id) {
        this.meal_id = meal_id;
    }

    public Long getDay() {
        return day;
    }

    public void setDay(Long day) {
        this.day = day;
    }
}
