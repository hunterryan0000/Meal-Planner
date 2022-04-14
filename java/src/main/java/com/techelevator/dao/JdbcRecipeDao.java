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
    public List<Recipe> getRecipes(String searchTerm) {
        String sql = "select * from recipes where name ilike ? limit 5";

        SqlRowSet resultSet = jdbcTemplate.queryForRowSet(sql, "%" + searchTerm + "%");

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
        String sql = "insert into recipes values (default, ?, ?, ?, ?, ?, ?, ?) returning recipe_id";
        Long recipe_id = jdbcTemplate.queryForObject(sql, long.class, recipe.getUser_id(), recipe.getName(), recipe.getDescription(), recipe.getInstructions(), recipe.getServings(), recipe.getDifficulty(), recipe.getPhoto_url());
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

    @Override
    public void deleteRecipe(Recipe recipe) {
        String sql = "DELETE FROM recipes WHERE recipe_id = ?";
        jdbcTemplate.update(sql, recipe.getId());

        List<RecipeIngredients> ingredients = recipe.getIngredientList();
        for (RecipeIngredients recipeIngredient: ingredients) {
            recipeIngredientsDao.removeRecipeIngredient(recipeIngredient);
        }

        List<Appliance> appliances = recipe.getApplianceList();
        for(Appliance appliance: appliances) {
            RecipeAppliances recipeAppliances = new RecipeAppliances();
            recipeAppliances.setAppliance_id(appliance.getId());
            recipeAppliances.setRecipe_id(recipe.getId());
            recipeAppliancesDao.removeRecipeAppliances(recipeAppliances);
        }


    }

    @Override
    public Recipe modifyRecipe(Recipe recipe) {
        String sql = "UPDATE recipes " +
                "SET name = ?, description = ?, instructions = ?, serving = ?, difficulty = ?, photo_url = ?" +
                "WHERE recipe_id = ?";

        int updateRowsCount = jdbcTemplate.update(sql, recipe.getName(), recipe.getDescription(), recipe.getInstructions(), recipe.getServings(), recipe.getDifficulty(), recipe.getPhoto_url(), recipe.getId());

        //remove old ingredients and appliances
        List<RecipeIngredients> ingredients = getRecipeById(recipe.getId(), recipe.getUser_id()).getIngredientList();
        for (RecipeIngredients recipeIngredient: ingredients) {
            recipeIngredientsDao.removeRecipeIngredient(recipeIngredient);
        }

        List<Appliance> appliances = getRecipeById(recipe.getId(), recipe.getUser_id()).getApplianceList();
        for(Appliance appliance: appliances) {
            RecipeAppliances recipeAppliances = new RecipeAppliances();
            recipeAppliances.setAppliance_id(appliance.getId());
            recipeAppliances.setRecipe_id(recipe.getId());
            recipeAppliancesDao.removeRecipeAppliances(recipeAppliances);
        }

        //add ingredients/appliances
        List<RecipeIngredients> updatedIngredients = recipe.getIngredientList();
        for (RecipeIngredients recipeIngredient: updatedIngredients) {
            recipeIngredient.setRecipe_id(recipe.getId());
            recipeIngredientsDao.addRecipeIngredients(recipeIngredient);
        }

        List<Appliance> updatedAppliances = recipe.getApplianceList();
        for(Appliance appliance: updatedAppliances) {
            RecipeAppliances recipeAppliances = new RecipeAppliances();
            recipeAppliances.setAppliance_id(appliance.getId());
            recipeAppliances.setRecipe_id(recipe.getId());
            recipeAppliancesDao.addRecipeAppliances(recipeAppliances);
        }

        Recipe updatedRecipe = new Recipe();
        if(updateRowsCount == 1){
            updatedRecipe = getRecipeById(recipe.getId(), recipe.getUser_id());
        }
        return updatedRecipe;
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
        recipe.setPhoto_url(resultSet.getString("photo_url"));
        recipe.setIngredientList(recipeIngredientsDao.getListByRecipeId(recipe.getId()));
        recipe.setApplianceList(applianceDao.getListByRecipeId(recipe.getId()));
        return recipe;
    }


}
