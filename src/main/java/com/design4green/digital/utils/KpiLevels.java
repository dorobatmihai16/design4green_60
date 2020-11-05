package com.design4green.digital.utils;

import com.design4green.digital.enums.*;

public class KpiLevels {

    public static double getLevel(KpiType kpiType, double value) {
        if (KpiType.ACCESS_AUX_INTERFACE.equals(kpiType)) {
            return AccessAuxInterfacesKpiLevelsEnum.getLevel(value);
        } else if (KpiType.ACCESS_A_INFO.equals(kpiType)) {
            return AccessAInfoKpiLevelsEnum.getLevel(value);
        } else if (KpiType.ACCESS_GLOBAL.equals(kpiType)) {
            return AccessGlobalKpiLevelsEnum.getLevel(value);
        } else if (KpiType.COMPETENCES_ADMIN.equals(kpiType)) {
            return CompetencesAdministrativesKpiLevelsEnum.getLevel(value);
        } else if (KpiType.COMPETENCES_NUMERIQUES.equals(kpiType)) {
            return CompetencesNumeriquesKpiLevelsEnum.getLevel(value);
        } else if (KpiType.COMPETENCES_GLOBAL.equals(kpiType)) {
            return CompetencesGlobalKpiLevelsEnum.getLevel(value);
        } else if (KpiType.GLOBAL.equals(kpiType)) {
            return GlobalKpiLevelsEnum.getLevel(value);
        }
        return 0;
    }

}
