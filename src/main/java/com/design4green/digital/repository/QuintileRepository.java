package com.design4green.digital.repository;

import com.design4green.digital.model.Quintile;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuintileRepository extends CrudRepository<Quintile, Long> {

    List<Quintile> findByRegionInsee(Integer regionInsee);

    List<Quintile> findByDepartmentInsee(Integer departmentInsee);

    List<Quintile> findByCityInsee(Integer cityInsee);

    List<Quintile> findByScoreGlobalBetween(Integer fromScore, Integer toScore);

}
