package com.design4green.digital.enums;

import java.util.Arrays;
import java.util.Optional;

public enum AccessAuxInterfacesKpiLevelsEnum {
    ACCESS_AUX_INTERFACES_LEVEL_ONE(1D,-1D, 21.22),
    ACCESS_AUX_INTERFACES_LEVEL_TWO(2D, 21.22, 26.27),
    ACCESS_AUX_INTERFACES_LEVEL_THREE(3D, 26.27, 31.31),
    ACCESS_AUX_INTERFACES_LEVEL_FOUR(4D, 31.31, 36.36),
    ACCESS_AUX_INTERFACES_LEVEL_FIVE(5D, 36.36, 1000D);

    public static double getLevel(double givenValue) {
        Optional<AccessAuxInterfacesKpiLevelsEnum> maybeResult = Arrays.stream(AccessAuxInterfacesKpiLevelsEnum.values())
                .filter(v -> givenValue >= v.fromInclusive && givenValue < v.toExclusive)
                .findFirst();
        return maybeResult.map(AccessAuxInterfacesKpiLevelsEnum::getLevel).orElse(0.0);
    }

    private double level;
    private double fromInclusive;
    private double toExclusive;

    AccessAuxInterfacesKpiLevelsEnum(double level, double fromInclusive, double toExclusive) {
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
