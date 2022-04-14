package com.techelevator.dao;

import com.techelevator.model.Meal;
import com.techelevator.model.MealsRecipes;
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
        String sql = "SELECT * FROM meals where user_id = ? AND meal_id = ?";

        SqlRowSet resultSet = jdbcTemplate.queryForRowSet(sql, userId, mealId);
        if(resultSet.next()){
            return mapRowToMeal(resultSet);
        }
        return null;
    }

    @Override
    public Meal addMeal(Meal meal) {
        String sql = "INSERT INTO meals VALUES (?, default, ?, ?, ?, ?) returning meal_id";
        Long meal_id = jdbcTemplate.queryForObject(sql, long.class,
                meal.getUser_id(), meal.getName(), meal.getDescription(), meal.getType_of_meal(), meal.getServings());
        for(MealsRecipes mealsRecipes: meal.getMealsRecipesList()){
            mealsRecipes.setMeal_id(meal_id);
            mealsRecipesDao.addMealsRecipes(mealsRecipes);
        }
        meal.setId(meal_id);
        return meal;
    }

    @Override
    public Meal modifyMeal(Meal meal) {
        String sql = "UPDATE meals " +
                "SET name = ?, description = ?, type_of_meal = ?, servings = ? " +
                "WHERE meal_id = ?";

        int updateRowsCount = jdbcTemplate.update(sql, meal.getName(), meal.getDescription(), meal.getType_of_meal(), meal.getServings());

        //remove old recipes from meals
        List<MealsRecipes> mealsRecipesList = getMealById(meal.getId(), meal.getUser_id()).getMealsRecipesList();
        for (MealsRecipes mealsRecipes: mealsRecipesList){
            mealsRecipesDao.removeMealsRecipes(mealsRecipes);
        }

        //add recipes to meals
        List<MealsRecipes> updatedRecipesList = meal.getMealsRecipesList();
        for (MealsRecipes mealsRecipes: updatedRecipesList) {
            mealsRecipes.setMeal_id(meal.getId());
            mealsRecipesDao.addMealsRecipes(mealsRecipes);
        }

        Meal updatedMeal = new Meal();
        if(updateRowsCount == 1) {
            updatedMeal = getMealById(meal.getId(), meal.getUser_id());
        }
        return updatedMeal;
    }

    @Override
    public void deleteMeal(Meal meal) {

        List<MealsRecipes> recipesList = meal.getMealsRecipesList();
        for (MealsRecipes recipes: recipesList){
            mealsRecipesDao.removeMealsRecipes(recipes);
        }

        String sql = "DELETE FROM meals WHERE meal_id = ?";
        jdbcTemplate.update(sql, meal.getId());
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
