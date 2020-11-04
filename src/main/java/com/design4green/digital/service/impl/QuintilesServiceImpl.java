package com.design4green.digital.service.impl;

import com.design4green.digital.model.CityStatistics;
import com.design4green.digital.model.Quintile;
import com.design4green.digital.repository.QuintileRepository;
import com.design4green.digital.service.CityStatisticsService;
import com.design4green.digital.service.QuintilesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Service
public class QuintilesServiceImpl implements QuintilesService {

    @Autowired
    private CityStatisticsService cityStatisticsService;

    @Autowired
    private QuintileRepository quintileRepository;


    @Override
    public List<Quintile> findByRegionInsee(Integer regionInsee) {
        return quintileRepository.findByRegionInsee(regionInsee);
    }

    @Override
    public List<Quintile> findByDepartmentInsee(Integer departmentInsee) {
        return quintileRepository.findByDepartmentInsee(departmentInsee);
    }

    @Override
    public List<Quintile> findByCityInsee(Integer cityInsee) {
        return quintileRepository.findByCityInsee(cityInsee);
    }

    @Override
    public List<Quintile> findByScoreGlobalBetween(Integer fromScore, Integer toScore) {
        return quintileRepository.findByScoreGlobalBetween(fromScore, toScore);
    }

    public void generateAndSaveQuintilesByCollectionOfCityStatisticsFromDb() {
        quintileRepository.saveAll(generateQuintilesByCollectionOfCityStatisticsFromDb());
    }

    private Iterable<Quintile> generateQuintilesByCollectionOfCityStatisticsFromDb() {
        Iterable<CityStatistics> cityStatistics = cityStatisticsService.findAll();

        return StreamSupport.stream(cityStatistics.spliterator(), false)
                .map(this::getQuintileFromCityStatistics)
                .filter(Optional::isPresent)
                .map(Optional::get)
                .collect(Collectors.toList());
    }

    private Optional<Quintile> getQuintileFromCityStatistics(CityStatistics cityStatistics) {
        return Optional.empty();
    }

}
