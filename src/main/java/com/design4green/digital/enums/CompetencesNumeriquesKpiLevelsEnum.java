package com.design4green.digital.enums;

import java.util.Arrays;
import java.util.Optional;

public enum CompetencesNumeriquesKpiLevelsEnum {
    COMPETENCES_NUMERIQUES_LEVEL_ONE(1D,-1D, 56.16),
    COMPETENCES_NUMERIQUES_LEVEL_TWO(2D, 56.16, 63.37),
    COMPETENCES_NUMERIQUES_LEVEL_THREE(3D, 63.37, 70.58),
    COMPETENCES_NUMERIQUES_LEVEL_FOUR(4D, 70.58, 77.79),
    COMPETENCES_NUMERIQUES_LEVEL_FIVE(5D, 77.79, 1000D);

    private double level;
    private double fromInclusive;
    private double toExclusive;

    public static double getLevel(double givenValue) {
        Optional<CompetencesNumeriquesKpiLevelsEnum> maybeResult = Arrays.stream(CompetencesNumeriquesKpiLevelsEnum.values())
                .filter(v -> givenValue >= v.fromInclusive && givenValue < v.toExclusive)
                .findFirst();
        return maybeResult.map(CompetencesNumeriquesKpiLevelsEnum::getLevel).orElse(0.0);
    }

    CompetencesNumeriquesKpiLevelsEnum(double level, double fromInclusive, double toExclusive) {
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
