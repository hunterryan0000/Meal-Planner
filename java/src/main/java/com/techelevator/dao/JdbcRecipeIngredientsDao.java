package com.techelevator.dao;

import com.techelevator.model.Ingredient;
import com.techelevator.model.RecipeIngredients;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcRecipeIngredientsDao implements RecipeIngredientsDao {


    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void addRecipeIngredients(RecipeIngredients recipe_ingredients) {
        String sql = "insert into recipe_ingredients values (?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, recipe_ingredients.getRecipe_id(), recipe_ingredients.getIngredient_id(), recipe_ingredients.getName(), recipe_ingredients.getQuantity(), recipe_ingredients.getMeasurement());

    }

    @Override
    public List<RecipeIngredients> getListByRecipeId(Long recipe_id) {
        List<RecipeIngredients> ingredientsList = new ArrayList<>();
        String sql = "select recipe_ingredients.* from ingredients \n" +
                "join recipe_ingredients on recipe_ingredients.ingredient_id = ingredients.ingredient_id\n" +
                "where recipe_ingredients.recipe_id = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, recipe_id);
        while (results.next()) {
            RecipeIngredients ingredient = mapRowToIngredient(results);
            ingredientsList.add(ingredient);
        }
        return ingredientsList;
    }

    public void removeRecipeIngredient(RecipeIngredients recipeIngredients) {
        String sql = "DELETE FROM recipe_ingredients " +
                "WHERE recipe_id = ? AND ingredient_id = ?";
        jdbcTemplate.update(sql, recipeIngredients.getRecipe_id(), recipeIngredients.getIngredient_id());
    }

    private RecipeIngredients mapRowToIngredient(SqlRowSet resultSet){
        RecipeIngredients ingredient = new RecipeIngredients();
        ingredient.setRecipe_id(resultSet.getLong("recipe_id"));
        ingredient.setIngredient_id(resultSet.getLong("ingredient_id"));
        ingredient.setName(resultSet.getString("name"));
        ingredient.setQuantity(resultSet.getFloat("quantity"));
        ingredient.setMeasurement(resultSet.getString("measurement"));
        return ingredient;
    }

}
