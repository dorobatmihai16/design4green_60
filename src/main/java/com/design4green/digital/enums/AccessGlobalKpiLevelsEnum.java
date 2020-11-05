package com.design4green.digital.enums;

import java.util.Arrays;
import java.util.Optional;

public enum AccessGlobalKpiLevelsEnum {
    ACCESS_GLOBAL_LEVEL_ONE(1D,-1D, 43.72),
    ACCESS_GLOBAL_LEVEL_TWO(2D, 43.72, 52.24),
    ACCESS_GLOBAL_LEVEL_THREE(3D, 52.24, 60.75),
    ACCESS_GLOBAL_LEVEL_FOUR(4D, 60.75, 69.27),
    ACCESS_GLOBAL_LEVEL_FIVE(5D, 69.27, 1000D);

    public static double getLevel(double givenValue) {
        Optional<AccessGlobalKpiLevelsEnum> maybeResult = Arrays.stream(AccessGlobalKpiLevelsEnum.values())
                .filter(v -> givenValue >= v.fromInclusive && givenValue < v.toExclusive)
                .findFirst();
        return maybeResult.map(AccessGlobalKpiLevelsEnum::getLevel).orElse(0.0);
    }

    private double level;
    private double fromInclusive;
    private double toExclusive;

    AccessGlobalKpiLevelsEnum(double level, double fromInclusive, double toExclusive) {
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
