package com.techelevator.controller;

import com.techelevator.dao.MealDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.Meal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

@PreAuthorize("isAuthenticated()")
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
        System.out.println(principal);
        System.out.println(principal.toString());
        System.out.println(principal.getName());
        meal.setUser_id(new Long(userDao.findIdByUsername(principal.getName())));

        System.out.println(meal.getUser_id());
        System.out.println(meal.getName());
        System.out.println(meal.getDescription());
        System.out.println(meal.getServings());
        System.out.println(meal.getType_of_meal());
        System.out.println(meal.getMealsRecipesList());

        return mealDao.addMeal(meal);
    }

    @RequestMapping(path = "/meals/all", method = RequestMethod.GET)
    public List<Meal> findAll(Principal principal){
        return mealDao.getAll(new Long(userDao.findIdByUsername(principal.getName())));
    }

    @RequestMapping(path = "/meals/search/{meal_id}", method = RequestMethod.GET)
    public Meal findById(@PathVariable Long meal_id, Principal principal){
        return null;
    }
}
