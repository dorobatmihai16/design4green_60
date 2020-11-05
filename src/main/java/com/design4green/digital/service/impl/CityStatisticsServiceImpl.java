package com.design4green.digital.service.impl;

import com.design4green.digital.model.CityStatistics;
import com.design4green.digital.repository.CityStatisticsRepository;
import com.design4green.digital.service.CityStatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Objects;

@Service
public class CityStatisticsServiceImpl implements CityStatisticsService {

    @Autowired
    private CityStatisticsRepository cityStatisticsRepository;

    @Override
    public Iterable<CityStatistics> findAll() {
        return cityStatisticsRepository.findAll();
    }

    @Override
    public boolean isInvalidCityStatistics(CityStatistics cityStatistics) {
        return Objects.isNull(cityStatistics)
                || Objects.isNull(cityStatistics.getCityName())
                || Objects.isNull(cityStatistics.getCityInsee())
                || Objects.isNull(cityStatistics.getDepartmentName())
                || Objects.isNull(cityStatistics.getDepartmentInsee())
                || Objects.isNull(cityStatistics.getRegionInsee())
                || Objects.isNull(cityStatistics.getPopulation())
                || Objects.isNull(cityStatistics.getPartDesChomeurs())
                || Objects.isNull(cityStatistics.getPartDesFamillesMonoparentales())
                || Objects.isNull(cityStatistics.getPartDesMenagesUnePersone())
                || Objects.isNull(cityStatistics.getPartDesNonOuPeutDiplomes())
                || Objects.isNull(cityStatistics.getPartDesPersonnesAge15To29())
                || Objects.isNull(cityStatistics.getRevenusMedianDisponible())
                || Objects.isNull(cityStatistics.getServicesPublicIndividu())
                || Objects.isNull(cityStatistics.getServicesPublics())
                || Objects.isNull(cityStatistics.getTauxDeCouvertureHdThd())
                || Objects.isNull(cityStatistics.getTauxDeCouvertureMobile())
                || Objects.isNull(cityStatistics.getTauxDePauvrete());
    }

}
