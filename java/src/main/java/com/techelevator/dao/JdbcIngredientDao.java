package com.techelevator.dao;

import com.techelevator.model.Ingredient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcIngredientDao implements IngredientDao{


    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<Ingredient> getSearch(String searchTerm) {
        String sql = "select * from ingredients where name ilike ? limit 20";

        SqlRowSet resultSet = jdbcTemplate.queryForRowSet(sql, "%" + searchTerm + "%");

        List<Ingredient> results = new ArrayList<>();
        while(resultSet.next()){
            results.add(mapRowToIngredient(resultSet));
        }
        return results;
    }

    @Override
    public List<Ingredient> getListByRecipeId(Long recipe_id) {
        List<Ingredient>ingredientList = new ArrayList<>();
        String sql = "select ingredients.* from ingredients \n" +
                "join recipe_ingredients on recipe_ingredients.ingredient_id = ingredients.ingredient_id\n" +
                "where recipe_ingredients.recipe_id = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, recipe_id);
        while (results.next()) {
            Ingredient ingredient = mapRowToIngredient(results);
            ingredientList.add(ingredient);
        }
        return ingredientList;
    }

    private Ingredient mapRowToIngredient(SqlRowSet resultSet){
        Ingredient ingredient = new Ingredient();
        ingredient.setId(resultSet.getLong("ingredient_id"));
        ingredient.setName(resultSet.getString("name"));
        return ingredient;
    }

}
