package com.design4green.digital.repository;

import com.design4green.digital.model.CityStatistics;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CityStatisticsRepository extends CrudRepository<CityStatistics, Long> {

}
