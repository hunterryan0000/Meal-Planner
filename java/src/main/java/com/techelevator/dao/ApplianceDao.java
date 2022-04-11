package com.techelevator.dao;

import com.techelevator.model.Appliance;

import java.util.List;

public interface ApplianceDao {

    List<Appliance> getSearch(String searchTerm);

}
