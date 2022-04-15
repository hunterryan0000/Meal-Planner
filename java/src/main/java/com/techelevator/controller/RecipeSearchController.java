package com.techelevator.controller;

import com.techelevator.dao.IngredientDao;
import com.techelevator.dao.RecipeDao;
import com.techelevator.model.Ingredient;
import com.techelevator.model.Recipe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
public class RecipeSearchController {

    @Autowired
    private RecipeDao recipeDao;

    public RecipeSearchController(RecipeDao recipeDao) {this.recipeDao = recipeDao;}

    @RequestMapping(path = "/recipe/search/{term}", method = RequestMethod.GET)
    public List<Recipe> search(@PathVariable String term){
        return recipeDao.getRecipes(term);
    }


}
