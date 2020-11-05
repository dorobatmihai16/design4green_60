package com.design4green.digital.enums;

import java.util.Arrays;
import java.util.Optional;

public enum CompetencesGlobalKpiLevelsEnum {
    COMPETENCES_GLOBAL_LEVEL_ONE(1D,-1D, 62.91),
    COMPETENCES_GLOBAL_LEVEL_TWO(2D, 62.91, 73.94),
    COMPETENCES_GLOBAL_LEVEL_THREE(3D, 73.94, 84.97),
    COMPETENCES_GLOBAL_LEVEL_FOUR(4D, 84.97, 95.99),
    COMPETENCES_GLOBAL_LEVEL_FIVE(5D, 95.99, 1000D);

    public static double getLevel(double givenValue) {
        Optional<CompetencesGlobalKpiLevelsEnum> maybeResult = Arrays.stream(CompetencesGlobalKpiLevelsEnum.values())
                .filter(v -> givenValue >= v.fromInclusive && givenValue < v.toExclusive)
                .findFirst();
        return maybeResult.map(CompetencesGlobalKpiLevelsEnum::getLevel).orElse(0.0);
    }

    private double level;
    private double fromInclusive;
    private double toExclusive;

    CompetencesGlobalKpiLevelsEnum(double level, double fromInclusive, double toExclusive) {
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
