package com.design4green.digital.repository;

import com.design4green.digital.model.Quintiles;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuintilesRepository extends CrudRepository<Quintiles, Long> {

    List<Quintiles> findByRegionInsee(Integer regionInsee);

    List<Quintiles> findByDepartmentInsee(Integer departmentInsee);

    List<Quintiles> findByCityInsee(Integer cityInsee);

    List<Quintiles> findByScoreGlobalBetween(Integer fromScore, Integer toScore);

}
