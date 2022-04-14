package com.techelevator.controller;

import com.techelevator.dao.MealDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.Meal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@CrossOrigin
@RestController
public class MealController {

    @Autowired
    private MealDao mealDao;

    @Autowired
    private UserDao userDao;

    public MealController(MealDao mealDao, UserDao userDao) {
        this.mealDao = mealDao;
        this.userDao = userDao;
    }

    @RequestMapping(path = "/meals/add", method = RequestMethod.POST)
    public Meal addMeal(Principal principal, @RequestBody Meal meal){
        meal.setUser_id(new Long(userDao.findIdByUsername(principal.getName())));

        System.out.println(meal.getUser_id());
        System.out.println(meal.getName());
        System.out.println(meal.getDescription());
        System.out.println(meal.getServings());
        System.out.println(meal.getType_of_meal());
        System.out.println(meal.getMealsRecipesList());






        return mealDao.addMeal(meal);
    }
}
