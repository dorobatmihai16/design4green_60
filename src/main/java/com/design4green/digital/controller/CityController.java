package com.design4green.digital.controller;

import com.design4green.digital.model.City;
import com.design4green.digital.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class CityController {

    @Autowired
    private CityService cityService;

    @GetMapping("/get-cities")
    public List<City> getCities() {
        return cityService.getCities();
    }

}
