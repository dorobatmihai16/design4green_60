package com.design4green.digital.enums;

import java.util.Arrays;
import java.util.Optional;

public enum CompetencesAdministrativesKpiLevelsEnum {
    COMPETENCES_ADMIN_LEVEL_ONE(1D,-1D, 47.94),
    COMPETENCES_ADMIN_LEVEL_TWO(2D, 47.94, 72.48),
    COMPETENCES_ADMIN_LEVEL_THREE(3D, 72.48, 97.03),
    COMPETENCES_ADMIN_LEVEL_FOUR(4D, 97.03, 121.57),
    COMPETENCES_ADMIN_LEVEL_FIVE(5D, 121.57, 1000D);

    public static double getLevel(double givenValue) {
        Optional<CompetencesAdministrativesKpiLevelsEnum> maybeResult = Arrays.stream(CompetencesAdministrativesKpiLevelsEnum.values())
                .filter(v -> givenValue >= v.fromInclusive && givenValue < v.toExclusive)
                .findFirst();
        return maybeResult.map(CompetencesAdministrativesKpiLevelsEnum::getLevel).orElse(0.0);
    }

    private double level;
    private double fromInclusive;
    private double toExclusive;

    CompetencesAdministrativesKpiLevelsEnum(double level, double fromInclusive, double toExclusive) {
        this.level = level;
        this.fromInclusive = fromInclusive;
        this.toExclusive = toExclusive;
    }
    public double getLevel() {
        return level;
    }

    public double getFromInclusive() {
        return fromInclusive;
    }

    public double getToExclusive() {
        return toExclusive;
    }
}
