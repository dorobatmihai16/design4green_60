package com.design4green.digital.service;

import com.design4green.digital.model.Quintile;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

public interface QuintilesService {

    List<Quintile> findByRegionInsee(Integer regionInsee);

    List<Quintile> findByDepartmentInsee(Integer departmentInsee);

    List<Quintile> findByCityInsee(Integer cityInsee);

    void generateAndSaveQuintilesByCollectionOfCityStatisticsFromDb();

    List<Quintile> findByAccessGlobalBetween(Double fromScore, Double toScore);

    List<Quintile> findByAccessAuxInterfacesBetween(Double fromScore, Double toScore);

    List<Quintile> findByAccessAInformationBetween(Double fromScore, Double toScore);

    List<Quintile> findByCompetencesAdministrativesBetween(Double fromScore, Double toScore);

    List<Quintile> findByCompetencesNumeriquesBetween(Double fromScore, Double toScore);

    List<Quintile> findByScoreGlobalBetween(Double fromScore, Double toScore);

    List<Quintile> findByCompetencesGlobalBetween(Double fromScore, Double toScore);
}
