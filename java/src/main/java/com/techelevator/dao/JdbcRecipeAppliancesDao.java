package com.techelevator.dao;

import com.techelevator.model.RecipeAppliances;
import com.techelevator.model.RecipeIngredients;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class JdbcRecipeAppliancesDao implements RecipeAppliancesDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;


    @Override
    public void addRecipeAppliances(RecipeAppliances recipeAppliances) {
        String sql = "insert into recipe_appliances values (?, ?)";
        jdbcTemplate.update(sql, recipeAppliances.getAppliance_id(), recipeAppliances.getRecipe_id());
    }

    @Override
    public void removeRecipeAppliances(RecipeAppliances recipeAppliances) {
        String sql = "DELETE FROM recipe_appliances " +
                "WHERE recipe_id = ? AND appliance_id = ?";
        jdbcTemplate.update(sql, recipeAppliances.getRecipe_id(), recipeAppliances.getAppliance_id());
    }
}
