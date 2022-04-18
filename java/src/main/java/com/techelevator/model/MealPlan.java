package com.techelevator.model;

import java.util.List;

public class MealPlan {

    private Long id;

    private Long user_id;

    private String name;

    private int totalDays;

    private List<Day> days;

    private List<MealsMealPlan> mealsMealPlanList;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUser_id() {
        return user_id;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getTotalDays() {
        return totalDays;
    }

    public void setTotalDays(int totalDays) {
        this.totalDays = totalDays;
    }

    public List<Day> getDays() {
        return days;
    }

    public void setDays(List<Day> days) {
        this.days = days;
    }

    public List<MealsMealPlan> getMealsMealPlanList() {
        return mealsMealPlanList;
    }

    public void setMealsMealPlanList(List<MealsMealPlan> mealsMealPlanList) {
        this.mealsMealPlanList = mealsMealPlanList;
    }
}
