package com.design4green.digital.enums;


import java.util.Arrays;
import java.util.Optional;

public enum RegionEnum {
    MARTINIQUE(2, "Martinique"),
    LA_REUNION(4, "La Réunion"),
    ILE_DE_FRANCE(11, "Île-de-France"),
    CENTRE_VAL_DE_LOIRE(24, "Centre-Val de Loire"),
    BOURGONGNE_FRANCHE_COMPTE(27, "Bourgogne-Franche-Comté"),
    NORMANDIE(28, "Normandie"),
    HAUTS_DE_FRANCE(32, "Hauts-de-France"),
    GRAND_EST(44, "Grand Est"),
    PAYS_DE_LA_LOIRE(52, "Pays de la Loire"),
    NOUVELLE_AQUITAINE(75, "Nouvelle-Aquitaine"),
    OCCITANIE(76, "Occitanie"),
    AUVERGNE_RHONE_ALPES(84, "Auvergne-Rhône-Alpes"),
    PROVENCE_ALPES(93, "Provence-Alpes-Côte d'Azur"),
    CORSE(94, "Corse");

    public static String getRegionNameByCode(int givenCode) {
        Optional<RegionEnum> maybeRegion = Arrays.stream(RegionEnum.values())
                .filter(r -> r.code == givenCode)
                .findFirst();
        return maybeRegion.map(RegionEnum::getLabel).orElse("");
    }

    private Integer code;
    private String label;


    public String getLabel() {
        return  this.label;
    }

    RegionEnum(Integer code, String label) {
        this.code = code;
        this.label = label;
    }

}
