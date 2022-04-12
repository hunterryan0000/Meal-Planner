package com.techelevator.dao;

import com.techelevator.model.RecipeIngredients;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class JdbcRecipeIngredientsDao implements RecipeIngredientsDao {


    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void addRecipeIngredients(RecipeIngredients recipe_ingredients) {
        String sql = "insert into recipe_ingredients values (?, ?, ?)";
        jdbcTemplate.update(sql, recipe_ingredients.getRecipe_id(), recipe_ingredients.getIngredient_id(), recipe_ingredients.getName());

    }
}
