package com.design4green.digital.service.impl;

import com.design4green.digital.enums.KpiType;
import com.design4green.digital.model.CityStatistics;
import com.design4green.digital.model.Quintile;
import com.design4green.digital.repository.QuintileRepository;
import com.design4green.digital.service.CityStatisticsService;
import com.design4green.digital.service.QuintilesService;
import com.design4green.digital.utils.Constants;
import com.design4green.digital.utils.KpiLevels;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.math.BigDecimal;
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

    @Override
    public List<Quintile> findByScoreGlobalBetween(Double fromScore, Double toScore) {
        return quintileRepository.findByScoreGlobalBetween(fromScore, toScore);
    }

    @Override
    public List<Quintile> findByAccessGlobalBetween(Double fromScore, Double toScore) {
        return quintileRepository.findByAccessGlobalBetween(fromScore, toScore);
    }

    @Override
    public List<Quintile> findByAccessAuxInterfacesBetween(Double fromScore, Double toScore) {
        return quintileRepository.findByAccessAuxInterfacesBetween(fromScore, toScore);
    }

    @Override
    public List<Quintile> findByAccessAInformationBetween(Double fromScore, Double toScore) {
        return quintileRepository.findByAccessAInformationBetween(fromScore, toScore);
    }

    @Override
    public List<Quintile> findByCompetencesAdministrativesBetween(Double fromScore, Double toScore) {
        return quintileRepository.findByCompetencesAdministrativesBetween(fromScore, toScore);
    }

    @Override
    public List<Quintile> findByCompetencesNumeriquesBetween(Double fromScore, Double toScore) {
        return quintileRepository.findByCompetencesNumeriquesBetween(fromScore, toScore);
    }

    @Override
    public List<Quintile> findByCompetencesGlobalBetween(Double fromScore, Double toScore) {
        return quintileRepository.findByCompetencesGlobalBetween(fromScore, toScore);
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
        quintile.setAccessAuxInterfaces(KpiLevels.getLevel(KpiType.ACCESS_AUX_INTERFACE, accesAuxInterfacesValue));

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
        quintile.setAccessAInformation(KpiLevels.getLevel(KpiType.ACCESS_A_INFO, accesInformationValue));

        double accessGlobalRaw = accesAuxInterfacesRaw + accesInformationRaw;
        double accessGlobalValue = (accessGlobalRaw * 100) / ( 7 * 100);
        quintile.setAccessGlobal(KpiLevels.getLevel(KpiType.ACCESS_GLOBAL, accessGlobalValue));

        double competencesAdminRawValue =
                ( ( ( cityStatistics.getPartDesChomeurs() - Constants.CONST_PART_CHOMEURS ) / Constants.CONST_PART_CHOMEURS ) + 1 ) * 100
                + ( ( ( cityStatistics.getPartDesPersonnesAge15To29() - Constants.CONST_PART_PERSONNES_AGEES_15_29 ) / Constants.CONST_PART_PERSONNES_AGEES_15_29 ) + 1 ) * 100;
        double competencesAdminValue = ( competencesAdminRawValue * 100 ) / ( 2 * 100);
        quintile.setCompetencesAdministratives(KpiLevels.getLevel(KpiType.COMPETENCES_ADMIN, competencesAdminValue));

//        double competencesNumeriquesRawValue =
//                ( ( ( cityStatistics.getPartDesPersonnesAge65Plus() - Constants.CONST_PART_PERSONNES_AGEES_65_PLUS ) / Constants.CONST_PART_PERSONNES_AGEES_65_PLUS ) + 1 ) * 100
//                + ( ( ( cityStatistics.getPartDesNonOuPeutDiplomes() - Constants.CONST_PART_NON_DIPLOMES ) / Constants.CONST_PART_NON_DIPLOMES ) + 1 ) * 100;
//        double competencesNumeriquesValue = ( competencesNumeriquesRawValue * 100 ) / ( 2 * 100);
//        quintile.setCompetencesAdministratives(KpiLevels.getLevel(KpiType.COMPETENCES_NUMERIQUES, competencesNumeriquesValue));
//
//        double competencesGlobalRaw = competencesAdminRawValue + competencesNumeriquesRawValue;
//        double competencesGlobalValue = (competencesGlobalRaw * 100) / ( 4 * 100);
//        quintile.setAccessGlobal(KpiLevels.getLevel(KpiType.COMPETENCES_GLOBAL, competencesGlobalValue));

        double globalScoreRaw = accessGlobalValue + 0;
        double globalScoreValue = ( globalScoreRaw * 100 ) / ( 11 * 100 );
        quintile.setScoreGlobal(KpiLevels.getLevel(KpiType.GLOBAL, globalScoreValue));

        return Optional.of(quintile);
    }

}
