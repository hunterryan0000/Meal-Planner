package com.techelevator.dao;

import com.techelevator.model.Appliance;
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
        String sql = "select * from appliances where name ilike ? limit 20";

        SqlRowSet resultSet = jdbcTemplate.queryForRowSet(sql, "" + searchTerm + "%");
        List<Appliance> results = new ArrayList<>();
        while(resultSet.next()){
            results.add(mapRowToAppliance(resultSet));
        }
        return results;
    }

    private Appliance mapRowToAppliance(SqlRowSet resultSet){
        Appliance appliance = new Appliance();
        appliance.setId(resultSet.getLong("appliance_id"));
        appliance.setName(resultSet.getString("name"));
        return appliance;
    }
}
