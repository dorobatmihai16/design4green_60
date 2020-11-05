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

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Service
public class QuintilesServiceImpl implements QuintilesService {

    public static final int WEIGHT_ACCESS_AUX_INTERFACES = 4;
    public static final int WEIGHT_ACCESS_A_INFO = 3;
    public static final int WEIGHT_ACCESS_GLOBAL = 7;
    public static final int WEIGHT_COMPETENCES_ADMIN = 2;
    public static final int WEIGHT_COMPETENCES_NUMERIQUES = 2;
    public static final int WEIGHT_COMPETENCES_GLOBAL = 4;
    public static final int WEIGHT_GLOBAL = 11;

    public static final int ONE_HUNDRED = 100;

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
        quintileRepository.deleteAll();

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

        Quintile quintile = createQuintileWithCityData(cityStatistics);

        double accesAuxInterfacesRaw = calculateAccessAuxInterfacesRaw(cityStatistics);
        double accesAuxInterfacesValue
                = (accesAuxInterfacesRaw * ONE_HUNDRED) / ( WEIGHT_ACCESS_AUX_INTERFACES * ONE_HUNDRED);
        quintile.setAccessAuxInterfaces(KpiLevels.getLevel(KpiType.ACCESS_AUX_INTERFACE, accesAuxInterfacesValue));

        double accesInformationRaw = calculateAccessALInformationRawValue(cityStatistics);
        double accesInformationValue
                = ( accesInformationRaw * ONE_HUNDRED ) / ( WEIGHT_ACCESS_A_INFO * ONE_HUNDRED);
        quintile.setAccessAInformation(KpiLevels.getLevel(KpiType.ACCESS_A_INFO, accesInformationValue));

        double accessGlobalRaw = accesAuxInterfacesRaw + accesInformationRaw;
        double accessGlobalValue
                = (accessGlobalRaw * ONE_HUNDRED) / ( WEIGHT_ACCESS_GLOBAL * ONE_HUNDRED);
        quintile.setAccessGlobal(KpiLevels.getLevel(KpiType.ACCESS_GLOBAL, accessGlobalValue));

        double competencesAdminRawValue = calculateCompetencesAdministrativesRawValue(cityStatistics);
        double competencesAdminValue
                = ( competencesAdminRawValue * ONE_HUNDRED ) / ( WEIGHT_COMPETENCES_ADMIN * ONE_HUNDRED);
        quintile.setCompetencesAdministratives(KpiLevels.getLevel(KpiType.COMPETENCES_ADMIN, competencesAdminValue));

        double competencesNumeriquesRawValue = calculateCompetencesNumeriquesRawValue(cityStatistics);
        double competencesNumeriquesValue
                = ( competencesNumeriquesRawValue * ONE_HUNDRED ) / ( WEIGHT_COMPETENCES_NUMERIQUES * ONE_HUNDRED);
        quintile.setCompetencesNumeriques(KpiLevels.getLevel(KpiType.COMPETENCES_NUMERIQUES, competencesNumeriquesValue));

        double competencesGlobalRaw = competencesAdminRawValue + competencesNumeriquesRawValue;
        double competencesGlobalValue
                = (competencesGlobalRaw * ONE_HUNDRED) / ( WEIGHT_COMPETENCES_GLOBAL * ONE_HUNDRED);
        quintile.setCompetencesGlobal(KpiLevels.getLevel(KpiType.COMPETENCES_GLOBAL, competencesGlobalValue));

        double globalScoreRaw = accessGlobalRaw + competencesGlobalRaw;
        double globalScoreValue
                = ( globalScoreRaw * ONE_HUNDRED ) / ( WEIGHT_GLOBAL * ONE_HUNDRED );
        quintile.setScoreGlobal(KpiLevels.getLevel(KpiType.GLOBAL, globalScoreValue));

        return Optional.of(quintile);
    }

    private Quintile createQuintileWithCityData(CityStatistics cityStatistics) {
        Quintile quintile = new Quintile();

        quintile.setCityInsee(cityStatistics.getCityInsee());
        quintile.setDepartmentInsee(cityStatistics.getDepartmentInsee());
        quintile.setRegionInsee(cityStatistics.getRegionInsee());

        return quintile;
    }

    private double calculateAccessAuxInterfacesRaw(CityStatistics cityStatistics) {
        BigDecimal tauxDeCouvertureHdThd =
                BigDecimal.ONE
                        .subtract(BigDecimal.valueOf(cityStatistics.getTauxDeCouvertureHdThd()))
                        .divide(BigDecimal.valueOf(Constants.CONST_TAUX_COUVERTURE_HD), RoundingMode.HALF_EVEN)
                        .multiply(BigDecimal.valueOf(100));

        BigDecimal tauxDeCouvertureMobile =
                BigDecimal.ONE
                        .subtract(BigDecimal.valueOf(cityStatistics.getTauxDeCouvertureMobile()))
                        .divide(BigDecimal.valueOf(Constants.CONST_TAUX_COUVERTURE_MOBILE), RoundingMode.HALF_EVEN)
                        .multiply(BigDecimal.valueOf(100));

        BigDecimal tauxPauvrete =
                BigDecimal.valueOf(cityStatistics.getTauxDePauvrete())
                        .subtract(BigDecimal.valueOf(Constants.CONST_TAUX_PAUVRETE))
                        .divide(BigDecimal.valueOf(Constants.CONST_TAUX_PAUVRETE), RoundingMode.HALF_EVEN)
                        .add(BigDecimal.ONE)
                        .multiply(BigDecimal.valueOf(100));

        BigDecimal revenusMedian =
                BigDecimal.valueOf(Constants.CONST_REVENUS_MEDIAN)
                        .subtract(BigDecimal.valueOf(cityStatistics.getRevenusMedianDisponible()))
                        .divide(BigDecimal.valueOf(Constants.CONST_REVENUS_MEDIAN), RoundingMode.HALF_EVEN)
                        .add(BigDecimal.ONE)
                        .multiply(BigDecimal.valueOf(100));

        return tauxDeCouvertureHdThd
                .add(tauxDeCouvertureMobile)
                .add(tauxPauvrete)
                .add(revenusMedian)
                .doubleValue();
    }

    public double calculateAccessALInformationRawValue(CityStatistics cityStatistics) {
        BigDecimal servicesPublicIndiv =
                BigDecimal.valueOf(2)
                    .subtract(
                            BigDecimal.valueOf(cityStatistics.getServicesPublicIndividu())
                                    .subtract(BigDecimal.valueOf(Constants.CONST_PART_SERVICES_PUBLIC_INDIV))
                                    .divide(BigDecimal.valueOf(Constants.CONST_PART_SERVICES_PUBLIC_INDIV), RoundingMode.HALF_EVEN)
                    )
                    .add(BigDecimal.ONE);
        if (servicesPublicIndiv.signum() == -1) {
            servicesPublicIndiv = BigDecimal.ZERO;
        } else {
            servicesPublicIndiv = servicesPublicIndiv.multiply(BigDecimal.valueOf(100));
        }

        BigDecimal partDesFamillesMonoparentales =
                BigDecimal.valueOf(cityStatistics.getPartDesFamillesMonoparentales())
                        .subtract(BigDecimal.valueOf(Constants.CONST_PART_FAMILLES_MONO))
                        .divide(BigDecimal.valueOf(Constants.CONST_PART_FAMILLES_MONO), RoundingMode.HALF_EVEN)
                        .add(BigDecimal.ONE)
                        .multiply(BigDecimal.valueOf(100));

        BigDecimal partDesMenagesUnePersone =
                BigDecimal.valueOf(cityStatistics.getPartDesMenagesUnePersone())
                        .subtract(BigDecimal.valueOf(Constants.CONST_PART_MENAGES_PERSONNE))
                        .divide(BigDecimal.valueOf(Constants.CONST_PART_MENAGES_PERSONNE), RoundingMode.HALF_EVEN)
                        .add(BigDecimal.ONE)
                        .multiply(BigDecimal.valueOf(100));

        return partDesFamillesMonoparentales
                .add(partDesMenagesUnePersone)
                .add(servicesPublicIndiv)
                .doubleValue();
    }

    public double calculateCompetencesAdministrativesRawValue(CityStatistics cityStatistics) {
        BigDecimal partDesChomeurs =
                BigDecimal.valueOf(cityStatistics.getPartDesChomeurs())
                        .subtract(BigDecimal.valueOf(Constants.CONST_PART_CHOMEURS))
                        .divide(BigDecimal.valueOf(Constants.CONST_PART_CHOMEURS), RoundingMode.HALF_EVEN)
                        .add(BigDecimal.ONE)
                        .multiply(BigDecimal.valueOf(100));

        BigDecimal partDesPersonnesAge15To29 =
                BigDecimal.valueOf(cityStatistics.getPartDesPersonnesAge15To29())
                        .subtract(BigDecimal.valueOf(Constants.CONST_PART_PERSONNES_AGEES_15_29))
                        .divide(BigDecimal.valueOf(Constants.CONST_PART_PERSONNES_AGEES_15_29), RoundingMode.HALF_EVEN)
                        .add(BigDecimal.ONE)
                        .multiply(BigDecimal.valueOf(100));

        return partDesChomeurs
                .add(partDesPersonnesAge15To29)
                .doubleValue();
    }

    public double calculateCompetencesNumeriquesRawValue(CityStatistics cityStatistics) {
        BigDecimal partDesPersonnesAge65Plus =
                BigDecimal.valueOf(cityStatistics.getPartDesPersonnesAge65Plus())
                        .subtract(BigDecimal.valueOf(Constants.CONST_PART_PERSONNES_AGEES_65_PLUS))
                        .divide(BigDecimal.valueOf(Constants.CONST_PART_PERSONNES_AGEES_65_PLUS), RoundingMode.HALF_EVEN)
                        .add(BigDecimal.ONE)
                        .multiply(BigDecimal.valueOf(100));

        BigDecimal partDesNonOuPeutDiplomes =
                BigDecimal.valueOf(cityStatistics.getPartDesNonOuPeutDiplomes())
                        .subtract(BigDecimal.valueOf(Constants.CONST_PART_NON_DIPLOMES))
                        .divide(BigDecimal.valueOf(Constants.CONST_PART_NON_DIPLOMES), RoundingMode.HALF_EVEN)
                        .add(BigDecimal.ONE)
                        .multiply(BigDecimal.valueOf(100));

        return partDesPersonnesAge65Plus
                .add(partDesNonOuPeutDiplomes)
                .doubleValue();
    }

}
