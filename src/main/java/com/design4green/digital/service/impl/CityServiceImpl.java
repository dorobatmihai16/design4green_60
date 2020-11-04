package com.design4green.digital.service.impl;

import com.design4green.digital.model.City;
import com.design4green.digital.model.CityStatistics;
import com.design4green.digital.repository.CityRepository;
import com.design4green.digital.service.CityService;
import com.design4green.digital.service.CityStatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Service
public class CityServiceImpl implements CityService {

    @Autowired
    private CityStatisticsService cityStatisticsService;

    @Autowired
    private CityRepository cityRepository;

    public List<City> getCities() {
        return StreamSupport.stream(cityRepository.findAll().spliterator(), false)
                .collect(Collectors.toList());
    }

    public void generateAndSaveCitiesByCollectionOfCityStatisticsFromDb() {
        cityRepository.saveAll(generateCitiesByCollectionOfCityStatisticsFromDb());
    }

    private Iterable<City> generateCitiesByCollectionOfCityStatisticsFromDb() {
        Iterable<CityStatistics> cityStatistics = cityStatisticsService.findAll();

        return StreamSupport.stream(cityStatistics.spliterator(), false)
                .map(this::getCityFromCityStatistics)
                .filter(Optional::isPresent)
                .map(Optional::get)
                .collect(Collectors.toList());
    }

    private Optional<City> getCityFromCityStatistics(CityStatistics cityStatistics) {
        if (cityStatisticsService.isInvalidCityStatistics(cityStatistics)) {
            return Optional.empty();
        }
        City city = new City();

        city.setCityName(cityStatistics.getCityName());
        city.setCityInsee(cityStatistics.getCityInsee());
        city.setDepartmentName(cityStatistics.getDepartmentName());
        city.setDepartmentInsee(cityStatistics.getDepartmentInsee());
        city.setRegionName(cityStatistics.getRegionName());
        city.setRegionInsee(cityStatistics.getRegionInsee());
        city.setPopulation(cityStatistics.getPopulation());

        return Optional.of(city);
    }

}
