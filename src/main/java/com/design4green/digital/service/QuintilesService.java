package com.design4green.digital.service;

import com.design4green.digital.model.Quintiles;

import java.util.List;

public interface QuintilesService {

    List<Quintiles> findByRegionInsee(Integer regionInsee);

    List<Quintiles> findByDepartmentInsee(Integer departmentInsee);

    List<Quintiles> findByCityInsee(Integer cityInsee);

    List<Quintiles> findByScoreGlobalBetween(Integer fromScore, Integer toScore);

}
