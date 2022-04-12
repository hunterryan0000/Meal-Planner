package com.techelevator.controller;

import com.techelevator.dao.IngredientDao;
import com.techelevator.dao.RecipeDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.Recipe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;
import java.util.List;

@RestController
public class RecipeController {

    @Autowired
    private RecipeDao recipeDao;

    @Autowired
    private UserDao userDao;

    public RecipeController(RecipeDao recipeDao, UserDao userDao) {
        this.recipeDao = recipeDao;
        this.userDao = userDao;
    }

    @RequestMapping(path = "/recipes/all", method =  RequestMethod.GET)
    public List<Recipe> findAll(Principal principal) {
        return recipeDao.getAll(new Long(userDao.findIdByUsername(principal.getName())));
    }
}
