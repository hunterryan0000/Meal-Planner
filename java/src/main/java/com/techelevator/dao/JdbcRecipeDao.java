package com.techelevator.dao;

import com.techelevator.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcRecipeDao implements RecipeDao{

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private IngredientDao ingredientDao;

    @Autowired
    private ApplianceDao applianceDao;

    @Autowired
    private RecipeIngredientsDao recipeIngredientsDao;

    @Autowired
    private RecipeAppliancesDao recipeAppliancesDao;

    @Override
    public List<Recipe> getAll(Long userId) {
        String sql = "select * from recipes where user_id = ?";

        SqlRowSet resultSet = jdbcTemplate.queryForRowSet(sql, userId);

        List<Recipe> results = new ArrayList<>();
        while(resultSet.next()){
            results.add(mapRowToRecipe(resultSet));
        }
        return results;
    }

    @Override
    public Recipe getRecipeById(Long recipeId, Long userId) {
        String sql = "select * from recipes where user_id = ? and recipe_id = ?";

        SqlRowSet resultSet = jdbcTemplate.queryForRowSet(sql, userId, recipeId);
        if(resultSet.next()){
            return mapRowToRecipe(resultSet);
        }
        return null;
    }


    @Override
    public Recipe addRecipe(Recipe recipe) {
        String sql = "insert into recipes values (default, ?, ?, ?, ?, ?, ?) returning recipe_id";
        Long recipe_id = jdbcTemplate.queryForObject(sql, long.class, recipe.getUser_id(), recipe.getName(), recipe.getDescription(), recipe.getInstructions(), recipe.getServings(), recipe.getDifficulty());
        for(RecipeIngredients recipeIngredients: recipe.getIngredientList()){
            recipeIngredients.setRecipe_id(recipe_id);
            System.out.println(recipeIngredients.getIngredient_id());
            recipeIngredientsDao.addRecipeIngredients(recipeIngredients);
        }
        for(Appliance appliance: recipe.getApplianceList()){
            RecipeAppliances recipeAppliances = new RecipeAppliances();
            recipeAppliances.setAppliance_id(appliance.getId());
            recipeAppliances.setRecipe_id(recipe_id);
            recipeAppliancesDao.addRecipeAppliances(recipeAppliances);
        }
        recipe.setId(recipe_id);
        return recipe;
    }

    private Recipe mapRowToRecipe(SqlRowSet resultSet){
        Recipe recipe = new Recipe();
        recipe.setId(resultSet.getLong("recipe_id"));
        recipe.setUser_id(resultSet.getLong("user_id"));
        recipe.setName(resultSet.getString("name"));
        recipe.setDescription(resultSet.getString("description"));
        recipe.setInstructions(resultSet.getString("instructions"));
        recipe.setServings(resultSet.getInt("serving"));
        recipe.setDifficulty(resultSet.getInt("difficulty"));
        recipe.setIngredientList(recipeIngredientsDao.getListByRecipeId(recipe.getId()));
        recipe.setApplianceList(applianceDao.getListByRecipeId(recipe.getId()));
        return recipe;
    }
}
