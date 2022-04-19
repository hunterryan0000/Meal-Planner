package com.techelevator.dao;

import com.techelevator.model.Day;
import com.techelevator.model.Meal;
import com.techelevator.model.MealPlan;
import com.techelevator.model.MealsMealPlan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Component
public class JdbcMealPlanDao implements MealPlanDao{

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private MealsMealPlanDao mealsMealPlanDao;

    @Override
    public List<MealPlan> getAll(Long userId) {
        String sql = "select * from mealplan where user_id = ?";

        SqlRowSet r = jdbcTemplate.queryForRowSet(sql, userId);
        List<MealPlan> results = new ArrayList<>();
        while(r.next()){
            results.add(mapRowToMealPlan(r, userId));
        }

        return results;
    }

    @Override
    public MealPlan getMealPlanById(Long mealPlanId, Long userId) {
        String sql = "select * from mealplan where user_id = ? and mealplan_id = ?";

        SqlRowSet r = jdbcTemplate.queryForRowSet(sql, userId, mealPlanId);
        if(r.next()){
            return mapRowToMealPlan(r, userId);
        }

        return null;
    }

    @Override
    public MealPlan addMealPlan(MealPlan mealPlan) {
        String sql = "insert into mealplan values (default, ?, ?, ?) returning mealplan_id";
        Long mealplan_id = jdbcTemplate.queryForObject(sql, long.class, mealPlan.getUser_id(), mealPlan.getName(), mealPlan.getTotalDays());
        mealPlan.setId(mealplan_id);
        for(Day days: mealPlan.getDays()){
            List<MealsMealPlan> mealsMealPlans = mealsMealPlanDao.mapDaytoMealsMealPlan(days, mealplan_id);
            for(MealsMealPlan mealsMealPlan: mealsMealPlans){
                mealsMealPlanDao.add(mealsMealPlan);
            }
        }
        return mealPlan;
    }

    @Override
    public void deleteMealPlan(MealPlan mealPlan) {
        for(Day days: mealPlan.getDays()){
            List<MealsMealPlan> mealsMealPlans = mealsMealPlanDao.mapDaytoMealsMealPlan(days, mealPlan.getId());
            for(MealsMealPlan mealsMealPlan: mealsMealPlans){
                mealsMealPlanDao.removeMealPlanMeals(mealsMealPlan);
            }
        }

        String sql = "DELETE FROM mealplan WHERE mealplan_id = ?";
        jdbcTemplate.update(sql, mealPlan.getId());
    }

    private MealPlan mapRowToMealPlan(SqlRowSet r, Long user_id){
        MealPlan mealPlan = new MealPlan();
        mealPlan.setId(r.getLong("mealplan_id"));
        mealPlan.setUser_id(r.getLong("user_id"));
        mealPlan.setName(r.getString("name"));
        mealPlan.setTotalDays(r.getInt("totaldays"));
        mealPlan.setDays(mealsMealPlanDao.getDaysByMealPlanId(mealPlan.getId(), mealPlan.getTotalDays(), user_id));
        return mealPlan;
    }
}
