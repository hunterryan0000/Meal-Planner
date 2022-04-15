package com.techelevator.controller;

import com.techelevator.dao.UserDao;
import com.techelevator.model.MealPlan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@PreAuthorize("isAuthenticated()")
@CrossOrigin
@RestController
public class MealPlanController {

    @Autowired
    private UserDao userDao;

    public MealPlanController(UserDao userDao) {
        this.userDao = userDao;
    }

    @RequestMapping(path = "/plans/add", method = RequestMethod.POST)
    public MealPlan addMealPlan(Principal principal, @RequestBody MealPlan mealPlan){
        mealPlan.setUser_id(new Long(userDao.findIdByUsername(principal.getName())));
        return mealPlan;
    }
}
