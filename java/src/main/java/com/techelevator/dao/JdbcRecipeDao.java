package com.techelevator.dao;

import com.techelevator.model.Appliance;
import com.techelevator.model.Ingredient;
import com.techelevator.model.Recipe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import java.util.ArrayList;
import java.util.List;

public class JdbcRecipeDao implements RecipeDao{

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private IngredientDao ingredientDao;

    @Autowired
    private ApplianceDao applianceDao;

    @Override
    public List<Recipe> getAll(Long userId) {
        String sql = "select * from recipes where user_id = ?";

        SqlRowSet resultSet = jdbcTemplate.queryForRowSet(sql, userId);

        List<Recipe> results = new ArrayList<>();
        while(resultSet.next()){
            //results.add();
        }
        return null;
    }

    @Override
    public Recipe getRecipeById(Long recipeId) {
        return null;
    }

    private Recipe mapRowToRecipe(SqlRowSet resultSet){
        Recipe recipe = new Recipe();
        recipe.setId(resultSet.getLong("recipe_id"));
        recipe.setUser_id(resultSet.getLong("user_id"));
        recipe.setName(resultSet.getString("name"));
        recipe.setDescription(resultSet.getString("description"));
        recipe.setInstructions(resultSet.getString("instructions"));
        recipe.setServings(resultSet.getInt("servings"));
        recipe.setDifficulty(resultSet.getInt("difficulty"));
        


        return recipe;
    }
}
