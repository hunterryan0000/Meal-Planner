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

        SqlRowSet resultSet = jdbcTemplate.queryForRowSet(sql, "" + searchTerm + "%");

        List<Ingredient> results = new ArrayList<>();
        while(resultSet.next()){
            results.add(mapRowToIngredient(resultSet));
        }
        return results;
    }

    private Ingredient mapRowToIngredient(SqlRowSet resultSet){
        Ingredient ingredient = new Ingredient();
        ingredient.setId(resultSet.getLong("ingredient_id"));
        ingredient.setName(resultSet.getString("name"));
        return ingredient;
    }

}
