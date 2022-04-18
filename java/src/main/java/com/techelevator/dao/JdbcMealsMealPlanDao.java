package com.techelevator.dao;

import com.techelevator.model.Day;
import com.techelevator.model.Meal;
import com.techelevator.model.MealsMealPlan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;


@Component
public class JdbcMealsMealPlanDao implements MealsMealPlanDao{


    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private JdbcMealDao jdbcMealDao;

    @Override
    public void add(MealsMealPlan mealsMealPlan) {
        String sql = "insert into meals_mealplan values (?, ?, ?)";
        jdbcTemplate.update(sql, mealsMealPlan.getMealplan_id(), mealsMealPlan.getMeal_id(), mealsMealPlan.getDay());

    }

    @Override
    public List<MealsMealPlan> mapDaytoMealsMealPlan(Day day, Long mealplan_id) {
        List<MealsMealPlan> mealsMealPlans = new ArrayList<>();
        for(Meal meals: day.getMealList()){
            MealsMealPlan mealsMealPlan = new MealsMealPlan();
            mealsMealPlan.setDay(day.getId());
            mealsMealPlan.setMeal_id(meals.getId());
            mealsMealPlan.setMealplan_id(mealplan_id);
            mealsMealPlans.add(mealsMealPlan);
        }
        return mealsMealPlans;
    }

    @Override
    public List<Day> getDaysByMealPlanId(Long mealplan_id, int totalDays, Long user_id) {
        List<Day> days = new ArrayList<>();
        for(int i = 1; i<=totalDays; i++){
            Day day = new Day();
            day.setId((long) i);
            String sql = "select * from meals_mealplan where mealplan_id = ? and day = ?";
            SqlRowSet r = jdbcTemplate.queryForRowSet(sql, mealplan_id, i);
            List<Meal> mealList = new ArrayList<>();
            while(r.next()){
                mealList.add(jdbcMealDao.getMealById(r.getLong("meal_id"), user_id));
            }
            day.setMealList(mealList);
            days.add(day);
        }
        return days;
    }
}
