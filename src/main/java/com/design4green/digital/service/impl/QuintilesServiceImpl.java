package com.design4green.digital.service.impl;

import com.design4green.digital.model.CityStatistics;
import com.design4green.digital.model.Quintile;
import com.design4green.digital.repository.QuintileRepository;
import com.design4green.digital.service.CityStatisticsService;
import com.design4green.digital.service.QuintilesService;
import com.design4green.digital.utils.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    public List<Quintile> findByScoreGlobalBetween(Integer fromScore, Integer toScore) {
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
        quintile.setAccessAInformation(getAccesAInformationKPI(accesInformationValue));

        double accessGlobalRaw = accesAuxInterfacesRaw + accesInformationRaw;
        double accessGlobalValue = (accessGlobalRaw * 100) / ( 7 * 100);
        quintile.setAccessGlobal(getGlobalAccesKPI(accessGlobalValue));

        double competencesAdminRawValue =
                ( ( ( cityStatistics.getPartDesChomeurs() - Constants.CONST_PART_CHOMEURS ) / Constants.CONST_PART_CHOMEURS ) + 1 ) * 100
                + ( ( ( cityStatistics.getPartDesPersonnesAge15To29() - Constants.CONST_PART_PERSONNES_AGEES_15_29 ) / Constants.CONST_PART_PERSONNES_AGEES_15_29 ) + 1 ) * 100;
        double competencesAdminValue = ( competencesAdminRawValue * 100 ) / ( 2 * 100);
        quintile.setCompetencesAdministratives(getCompetencesAdministrativesKPI(competencesAdminValue));

        double competencesNumeriquesRawValue =
                ( ( ( cityStatistics.getPartDesPersonnesAge65Plus() - Constants.CONST_PART_PERSONNES_AGEES_65_PLUS ) / Constants.CONST_PART_PERSONNES_AGEES_65_PLUS ) + 1 ) * 100
                + ( ( ( cityStatistics.getPartDesNonOuPeutDiplomes() - Constants.CONST_PART_NON_DIPLOMES ) / Constants.CONST_PART_NON_DIPLOMES ) + 1 ) * 100;
        double competencesNumeriquesValue = ( competencesNumeriquesRawValue * 100 ) / ( 2 * 100);
        quintile.setCompetencesAdministratives(getCompetencesNumeriquesKPI(competencesNumeriquesValue));

        double competencesGlobalRaw = competencesAdminRawValue + competencesNumeriquesRawValue;
        double competencesGlobalValue = (competencesGlobalRaw * 100) / ( 4 * 100);
        quintile.setAccessGlobal(getGlobalCompetencesKPI(competencesGlobalValue));

        double globalScoreRaw = accessGlobalValue + competencesGlobalRaw;
        double globalScoreValue = ( globalScoreRaw * 100 ) / ( 11 * 100 );
        quintile.setScoreGlobal(getGlobalScoreKPI(globalScoreValue));

        return Optional.of(quintile);
    }

    private double getAccesAuxInterfacesKPI(double value) {
        if (value < 21.22) {
            return 1d;
        } else if (value >= 21.22 && value < 26.27) {
            return 2d;
        } else if (value >= 26.27 && value < 31.31) {
            return 3d;
        } else if (value >= 31.31 && value < 36.36) {
            return 4d;
        }
        return 5d;
    }

    private double getAccesAInformationKPI(double value) {
        if (value < 56.54) {
            return 1d;
        } else if (value >= 56.54 && value < 78.95) {
            return 2d;
        } else if (value >= 78.95 && value < 101.36) {
            return 3d;
        } else if (value >= 101.36 && value < 123.77) {
            return 4d;
        }
        return 5d;
    }

    private double getGlobalAccesKPI(double value) {
        if (value < 43.72) {
            return 1d;
        } else if (value >= 43.72 && value < 52.24) {
            return 2d;
        } else if (value >= 52.24 && value < 60.75) {
            return 3d;
        } else if (value >= 60.75 && value < 69.27) {
            return 4d;
        }
        return 5d;
    }

    private double getCompetencesAdministrativesKPI(double value) {
        if (value < 47.94) {
            return 1d;
        } else if (value >= 47.94 && value < 72.48) {
            return 2d;
        } else if (value >= 72.48 && value < 97.03) {
            return 3d;
        } else if (value >= 97.03 && value < 121.57) {
            return 4d;
        }
        return 5d;
    }

    private double getCompetencesNumeriquesKPI(double value) {
        if (value < 56.16) {
            return 1d;
        } else if (value >= 56.16 && value < 63.37) {
            return 2d;
        } else if (value >= 63.37 && value < 70.58) {
            return 3d;
        } else if (value >= 70.58 && value < 77.79) {
            return 4d;
        }
        return 5d;
    }

    private double getGlobalCompetencesKPI(double value) {
        if (value < 62.91) {
            return 1d;
        } else if (value >= 62.91 && value < 73.94) {
            return 2d;
        } else if (value >= 73.94 && value < 84.97) {
            return 3d;
        } else if (value >= 84.97 && value < 95.99) {
            return 4d;
        }
        return 5d;
    }

    private double getGlobalScoreKPI(double value) {
        if (value < 56.16) {
            return 1d;
        } else if (value >= 56.16 && value < 63.37) {
            return 2d;
        } else if (value >= 63.37 && value < 70.58) {
            return 3d;
        } else if (value >= 70.58 && value < 77.79) {
            return 4d;
        }
        return 5d;
    }

}
