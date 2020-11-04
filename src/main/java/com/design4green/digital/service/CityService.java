package com.design4green.digital.service;

import com.design4green.digital.model.City;

import java.util.List;

public interface CityService {

    void generateAndSaveCitiesByCollectionOfCityStatisticsFromDb();

    List<City> getCities();

}
