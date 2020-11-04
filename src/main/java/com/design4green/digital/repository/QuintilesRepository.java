package com.design4green.digital.repository;

import com.design4green.digital.model.Quintiles;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface QuintilesRepository extends CrudRepository<Quintiles, Long> {

    List<Quintiles> findByRegionInsee(Integer regionInsee);

    List<Quintiles> findByDepartmentInsee(Integer departmentInsee);

    List<Quintiles> findByCityInsee(Integer cityInsee);

    List<Quintiles> findByScoreGlobalBetween(Integer fromScore, Integer toScore);

}
