package com.design4green.digital.enums;

import java.util.Arrays;
import java.util.Optional;

public enum AccessAInfoKpiLevelsEnum {
    ACCESS_A_INFO_LEVEL_ONE(1D,-1D, 56.54),
    ACCESS_A_INFO_LEVEL_TWO(2D, 56.54, 78.95),
    ACCESS_A_INFO_LEVEL_THREE(3D, 78.95, 101.36),
    ACCESS_A_INFO_LEVEL_FOUR(4D, 101.36, 123.77),
    ACCESS_A_INFO_LEVEL_FIVE(5D, 123.77, 1000D);

    public static double getLevel(double givenValue) {
        Optional<AccessAInfoKpiLevelsEnum> maybeResult = Arrays.stream(AccessAInfoKpiLevelsEnum.values())
                .filter(v -> givenValue >= v.fromInclusive && givenValue < v.toExclusive)
                .findFirst();
        return maybeResult.map(AccessAInfoKpiLevelsEnum::getLevel).orElse(0.0);
    }

    private double level;
    private double fromInclusive;
    private double toExclusive;

    AccessAInfoKpiLevelsEnum(double level, double fromInclusive, double toExclusive) {
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
