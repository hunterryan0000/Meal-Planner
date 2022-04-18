package com.techelevator.controller;

import com.techelevator.dao.MealPlanDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.MealPlan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

@PreAuthorize("isAuthenticated()")
@CrossOrigin
@RestController
public class MealPlanController {

    @Autowired
    private UserDao userDao;

    @Autowired
    private MealPlanDao mealPlanDao;


    public MealPlanController(UserDao userDao, MealPlanDao mealPlanDao) {
        this.userDao = userDao;
        this.mealPlanDao = mealPlanDao;
    }

    @RequestMapping(path = "/plans/add", method = RequestMethod.POST)
    public MealPlan addMealPlan(Principal principal, @RequestBody MealPlan mealPlan){
        mealPlan.setUser_id(new Long(userDao.findIdByUsername(principal.getName())));
        return mealPlanDao.addMealPlan(mealPlan);
    }

    @RequestMapping(path = "/plans/all", method = RequestMethod.GET)
    public List<MealPlan> getAll(Principal principal){
        return mealPlanDao.getAll(new Long(userDao.findIdByUsername(principal.getName())));
    }

    @RequestMapping(path = "/plans/search/{mealplan_id}", method = RequestMethod.GET)
    public MealPlan findById(@PathVariable Long mealplan_id, Principal principal){
        return mealPlanDao.getMealPlanById(mealplan_id, new Long(userDao.findIdByUsername(principal.getName())));
    }

    @RequestMapping(path = "/plans/delete", method = RequestMethod.DELETE)
    public void deleteMealPlan(Principal principal, @RequestBody MealPlan mealPlan){
        mealPlan.setUser_id(new Long(userDao.findIdByUsername(principal.getName())));
        mealPlanDao.deleteMealPlan(mealPlan);
    }

}
