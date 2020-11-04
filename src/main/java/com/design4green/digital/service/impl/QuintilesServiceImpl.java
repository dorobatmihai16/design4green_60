package com.design4green.digital.service.impl;

import com.design4green.digital.model.CityStatistics;
import com.design4green.digital.model.Quintile;
import com.design4green.digital.repository.QuintileRepository;
import com.design4green.digital.service.CityStatisticsService;
import com.design4green.digital.service.QuintilesService;
import com.design4green.digital.utils.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Service
public class QuintilesServiceImpl implements QuintilesService {

    @Autowired
    private CityStatisticsService cityStatisticsService;

    @Autowired
    private QuintileRepository quintileRepository;


    @Override
    public List<Quintile> findByRegionInsee(Integer regionInsee) {
        return quintileRepository.findByRegionInsee(regionInsee);
    }

    @Override
    public List<Quintile> findByDepartmentInsee(Integer departmentInsee) {
        return quintileRepository.findByDepartmentInsee(departmentInsee);
    }

    @Override
    public List<Quintile> findByCityInsee(Integer cityInsee) {
        return quintileRepository.findByCityInsee(cityInsee);
    }

    public List<Quintile> findByScoreGlobalBetween(Double fromScore, Double toScore) {
        return quintileRepository.findByScoreGlobalBetween(fromScore, toScore);
    }

    public void generateAndSaveQuintilesByCollectionOfCityStatisticsFromDb() {
        quintileRepository.saveAll(generateQuintilesByCollectionOfCityStatisticsFromDb());
    }

    private Iterable<Quintile> generateQuintilesByCollectionOfCityStatisticsFromDb() {
        Iterable<CityStatistics> cityStatistics = cityStatisticsService.findAll();

        return StreamSupport.stream(cityStatistics.spliterator(), false)
                .map(this::getQuintileFromCityStatistics)
                .filter(Optional::isPresent)
                .map(Optional::get)
                .collect(Collectors.toList());
    }

    private Optional<Quintile> getQuintileFromCityStatistics(CityStatistics cityStatistics) {
        if (cityStatisticsService.isInvalidCityStatistics(cityStatistics)) {
            return Optional.empty();
        }

        Quintile quintile = new Quintile();

        double accesAuxInterfacesRaw =
                ( ( (1 - cityStatistics.getTauxDeCouvertureHdThd()) / Constants.CONST_TAUX_COUVERTURE_HD ) * 100 )
                +  ( ( (1 - cityStatistics.getTauxDeCouvertureMobile()) / Constants.CONST_TAUX_COUVERTURE_MOBILE ) * 100 )
                +  ( ( ( (cityStatistics.getTauxDePauvrete() - Constants.CONST_TAUX_PAUVRETE) / Constants.CONST_TAUX_PAUVRETE ) + 1 ) * 100 )
                +  ( ( ( (Constants.CONST_REVENUS_MEDIAN - cityStatistics.getRevenusMedianDisponible()) / Constants.CONST_REVENUS_MEDIAN ) + 1 ) * 100 );
        double accesAuxInterfacesValue = (accesAuxInterfacesRaw * 100) / ( 4 * 100);
        quintile.setAccessAuxInterfaces(getAccesAuxInterfacesKPI(accesAuxInterfacesValue));

        double servicesPublicIndiv = 2
                - ( ( cityStatistics.getServicesPublicIndividu() - Constants.CONST_PART_SERVICES_PUBLIC_INDIV ) / Constants.CONST_PART_SERVICES_PUBLIC_INDIV )
                + 1;
        if (servicesPublicIndiv < 0) {
            servicesPublicIndiv = 0;
        }
        double accesInformationRaw =
                ( ( ( (cityStatistics.getPartDesFamillesMonoparentales() - Constants.CONST_PART_FAMILLES_MONO) / Constants.CONST_PART_FAMILLES_MONO ) + 1 ) * 100 )
                + ( ( ( (cityStatistics.getPartDesMenagesUnePersone() - Constants.CONST_PART_MENAGES_PERSONNE) / Constants.CONST_PART_MENAGES_PERSONNE ) + 1 ) * 100 )
                + servicesPublicIndiv;
        double accesInformationValue = ( accesInformationRaw * 100 ) / ( 3 * 100);
        quintile.setAccessAInformation(accesInformationValue);

        double accessGlobalRaw = accesAuxInterfacesRaw + accesInformationRaw;
        double accessGlobalValue = (accessGlobalRaw * 100) / ( 7 * 100);
        quintile.setAccessGlobal(getAccesAInformationKPI(accessGlobalValue));

        return Optional.of(quintile);
    }

    private double getAccesAuxInterfacesKPI(double accesAuxInterfacesValue) {
        if (accesAuxInterfacesValue < 21.22) {
            return 1d;
        } else if (accesAuxInterfacesValue >= 21.22 && accesAuxInterfacesValue < 26.27) {
            return 2d;
        } else if (accesAuxInterfacesValue >= 26.27 && accesAuxInterfacesValue < 31.31) {
            return 3d;
        } else if (accesAuxInterfacesValue >= 31.31 && accesAuxInterfacesValue < 36.36) {
            return 4d;
        }
        return 5d;
    }

    private double getAccesAInformationKPI(double accesAuxInterfacesValue) {
        if (accesAuxInterfacesValue < 56.54) {
            return 1d;
        } else if (accesAuxInterfacesValue >= 56.54 && accesAuxInterfacesValue < 78.95) {
            return 2d;
        } else if (accesAuxInterfacesValue >= 78.95 && accesAuxInterfacesValue < 101.36) {
            return 3d;
        } else if (accesAuxInterfacesValue >= 101.36 && accesAuxInterfacesValue < 123.77) {
            return 4d;
        }
        return 5d;
    }

}
