package com.techelevator.dao;

import com.techelevator.model.Appliance;
import com.techelevator.model.Ingredient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcApplianceDao implements ApplianceDao{

    @Autowired
    private JdbcTemplate jdbcTemplate;


    @Override
    public List<Appliance> getSearch(String searchTerm) {
        String sql = "select * from appliances where name ilike ? limit 10";

        SqlRowSet resultSet = jdbcTemplate.queryForRowSet(sql, "%" + searchTerm + "%");
        List<Appliance> results = new ArrayList<>();
        while(resultSet.next()){
            results.add(mapRowToAppliance(resultSet));
        }
        return results;
    }

    @Override
    public List<Appliance> getListByRecipeId(Long recipe_id) {
        List<Appliance>applianceList = new ArrayList<>();
        String sql = "select appliances.* from appliances \n" +
                "join recipe_appliances on recipe_appliances.appliance_id = appliances.appliance_id\n" +
                "where recipe_appliances.recipe_id = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, recipe_id);
        while (results.next()) {
            Appliance appliance = mapRowToAppliance(results);
            applianceList.add(appliance);
        }
        return applianceList;
    }


    private Appliance mapRowToAppliance(SqlRowSet resultSet){
        Appliance appliance = new Appliance();
        appliance.setId(resultSet.getLong("appliance_id"));
        appliance.setName(resultSet.getString("name"));
        return appliance;
    }
}
