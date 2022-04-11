package com.techelevator.controller;

import com.techelevator.dao.ApplianceDao;
import com.techelevator.model.Appliance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ApplianceSearchController {
    @Autowired
    private ApplianceDao applianceDao;

    public ApplianceSearchController(ApplianceDao applianceDao) {this.applianceDao = applianceDao;}

    @RequestMapping(path = "/appliance/search/{term}", method = RequestMethod.GET)
    public List<Appliance> search(@PathVariable String term){
        return applianceDao.getSearch(term);
    }
}
