package com.design4green.digital.model;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Data
@ToString
@Table(name="city_statistics", schema = "public")
public class CityStatistics {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="city_id")
    private Long id;

    @Column(name="nom_com")
    private String cityName;

    @Column(name="insee_com")
    private Integer cityInsee;

    @Column(name="nom_dep")
    private String departmentName;

    @Column(name="insee_dep")
    private Integer departmentInsee;

    @Column(name="nom_reg")
    private String regionName;

    @Column(name="insee_reg")
    private Integer regionInsee;

    private Integer population;

    @Column(name = "taux_de_couverture_hd_thd")
    private Double tauxDeCouvertureHdThd;

    @Column(name = "taux_de_couverture_mobile")
    private Double tauxDeCouvertureMobile;

    @Column(name = "taux_de_pauvrete")
    private Double tauxDePauvrete;

    @Column(name = "revenus_median_disponible")
    private Double revenusMedianDisponible;

    @Column(name = "part_des_familles_monoparentale")
    private Double partDesFamillesMonoparentales;

    @Column(name = "part_des_menages")
    private Double partDesMenages;

    @Column(name = "part_des_menages_une_persone")
    private Double partDesMenagesUnePersone;

    @Column(name = "services_publics_individu")
    private Double servicesPublicIndividu;

    @Column(name = "services_publics")
    private Double servicesPublics;

    @Column(name = "part_des_chomeurs")
    private Double partDesChomeurs;

    @Column(name = "part_des_personnes_age_15_29")
    private Double partDesPersonnesAge15To29;

    @Column(name = "part_des_personnes_age_65_plus")
    private Double partDesPersonnesAge65Plus;

    @Column(name = "part_des_non_ou_peut_diplomes")
    private Double partDesNonOuPeutDiplomes;

}
