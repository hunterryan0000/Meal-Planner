package com.techelevator.dao;

import com.techelevator.model.Meal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import java.util.ArrayList;
import java.util.List;

public class JdbcMealDao implements MealDao{

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private MealsRecipesDao mealsRecipesDao;

    @Override
    public List<Meal> getAll(Long userId) {
        String sql = "SELECT * FROM meals where user_id = ?";

        SqlRowSet resultSet = jdbcTemplate.queryForRowSet(sql, userId);

        List<Meal> results = new ArrayList<>();
        while(resultSet.next()){
            results.add(mapRowToMeal(resultSet));
        }
        return results;
    }

    @Override
    public Meal getMealById(Long mealId, Long userId) {
        return null;
    }

    @Override
    public Meal addMeal(Meal meal) {
        return null;
    }

    @Override
    public Meal modifyMeal(Meal meal) {
        return null;
    }

    @Override
    public void deleteMeal(Meal meal) {

    }



    private Meal mapRowToMeal(SqlRowSet resultSet) {
        Meal meal = new Meal();
        meal.setId(resultSet.getLong("meal_id"));
        meal.setUser_id(resultSet.getLong("user_id"));
        meal.setName(resultSet.getString("name"));
        meal.setDescription(resultSet.getString("description"));
        meal.setType_of_meal(resultSet.getString("type_of_meal"));
        meal.setServings(resultSet.getInt("servings"));
        meal.setMealsRecipesList(mealsRecipesDao.getListByMealId(meal.getId()));
        return meal;
    }
}
