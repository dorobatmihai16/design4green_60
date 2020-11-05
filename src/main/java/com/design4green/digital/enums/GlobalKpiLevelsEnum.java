package com.design4green.digital.enums;

import java.util.Arrays;
import java.util.Optional;

public enum GlobalKpiLevelsEnum {
    GLOBAL_LEVEL_ONE(1D,-1D, 56.16),
    GLOBAL_LEVEL_TWO(2D, 56.16, 63.37),
    GLOBAL_LEVEL_THREE(3D, 63.37, 70),
    GLOBAL_LEVEL_FOUR(4D, 70, 77.79),
    GLOBAL_LEVEL_FIVE(5D, 77.79, 1000D);

    public static double getLevel(double givenValue) {
        Optional<GlobalKpiLevelsEnum> maybeResult = Arrays.stream(GlobalKpiLevelsEnum.values())
                .filter(v -> givenValue >= v.fromInclusive && givenValue < v.toExclusive)
                .findFirst();
        return maybeResult.map(GlobalKpiLevelsEnum::getLevel).orElse(0.0);
    }

    private double level;
    private double fromInclusive;
    private double toExclusive;

    GlobalKpiLevelsEnum(double level, double fromInclusive, double toExclusive) {
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
