package com.design4green.digital.service;

import com.design4green.digital.model.Quintile;

import java.util.List;

public interface QuintilesService {

    List<Quintile> findByRegionInsee(Integer regionInsee);

    List<Quintile> findByDepartmentInsee(Integer departmentInsee);

    List<Quintile> findByCityInsee(Integer cityInsee);

//    List<Quintile> findByScoreGlobalBetween(Double fromScore, Double toScore);

    void generateAndSaveQuintilesByCollectionOfCityStatisticsFromDb();

}
