package com.design4green.digital.service;

import com.design4green.digital.model.CityStatistics;

public interface CityStatisticsService {

    Iterable<CityStatistics> findAll();

    boolean isInvalidCityStatistics(CityStatistics cityStatistics);

}
