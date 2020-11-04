package com.design4green.digital.service.impl;

import com.design4green.digital.model.CityStatistics;
import com.design4green.digital.repository.CityStatisticsRepository;
import com.design4green.digital.service.CityStatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CityStatisticsServiceImpl implements CityStatisticsService {

    @Autowired
    private CityStatisticsRepository cityStatisticsRepository;

    @Override
    public Iterable<CityStatistics> findAll() {
        return cityStatisticsRepository.findAll();
    }

}
