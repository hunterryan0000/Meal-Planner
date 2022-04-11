package com.techelevator.controller;


import com.techelevator.dao.IngredientDao;
import com.techelevator.model.Ingredient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class IngredientSearchController {

    @Autowired
    private IngredientDao ingredientDao;

    public IngredientSearchController(IngredientDao ingredientDao) {this.ingredientDao = ingredientDao;}

    @RequestMapping(path = "/ingredient/search/{term}", method = RequestMethod.GET)
    public List<Ingredient> search(@PathVariable String term){
        return ingredientDao.getSearch(term);
    }



}
