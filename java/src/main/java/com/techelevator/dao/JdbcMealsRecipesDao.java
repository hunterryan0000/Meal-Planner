package com.techelevator.dao;

import com.techelevator.model.MealsRecipes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcMealsRecipesDao implements MealsRecipesDao {


    @Autowired
    private JdbcTemplate jdbcTemplate;


    @Override
    public void addMealsRecipes(MealsRecipes mealsRecipes) {
        String sql = "INSERT INTO meals_recipes values (?, ?)";
        jdbcTemplate.update(sql, mealsRecipes.getMeal_id(), mealsRecipes.getRecipe_id());
    }

    @Override
    public List<MealsRecipes> getListByMealId(Long meal_id) {
        List<MealsRecipes> mealsRecipesList = new ArrayList<>();
        String sql = "SELECT * FROM meals_recipes " +
                "WHERE meal_id = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, meal_id);
        while (results.next()){
            MealsRecipes recipes = mapRowToMealsRecipes(results);
            mealsRecipesList.add(recipes);
        }
        return mealsRecipesList;
    }

    @Override
    public void removeMealsRecipes(MealsRecipes mealsRecipes) {
        String sql = "DELETE FROM meals_recipes " +
                "WHERE meal_id = ? AND recipe_id = ?";
        jdbcTemplate.update(sql, mealsRecipes.getMeal_id(), mealsRecipes.getRecipe_id());
    }

    @Override
    public void nukeByRecipeId(Long id) {
        String sql = "delete from meals_recipes where recipe_id = ?";
        jdbcTemplate.update(sql, id);
    }

    private MealsRecipes mapRowToMealsRecipes(SqlRowSet resultSet){
        MealsRecipes mealsRecipes = new MealsRecipes();
        mealsRecipes.setMeal_id(resultSet.getLong("meal_id"));
        mealsRecipes.setRecipe_id(resultSet.getLong("recipe_id"));
        return mealsRecipes;
    }

}
