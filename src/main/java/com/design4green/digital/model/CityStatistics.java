package com.design4green.digital.model;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Data
@ToString
@Table(name="base_de_donnees", schema = "public")
public class CityStatistics {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name="nom_com")
    private String cityName;

    @Column(name="insee_com")
    private Integer cityInsee;

    @Column(name="nom_dep")
    private String departmentName;

    @Column(name="insee_dep")
    private Integer departmentInsee;

//    @Column(name="nom_reg")
//    private String regionName;

    @Column(name="insee_reg")
    private Integer regionInsee;

    @Column(name="population_legale")
    private Integer population;

    @Column(name = "taux_de_couverture_hd_thd")
    private Double tauxDeCouvertureHdThd;

    @Column(name = "taux_de_couverture_mobile")
    private Double tauxDeCouvertureMobile;

    @Column(name = "taux_de_pauvrete")
    private Double tauxDePauvrete;

    @Column(name = "revenus_median_disponible")
    private Double revenusMedianDisponible;

    @Column(name = "part_des_familles_monoparentales")
    private Double partDesFamillesMonoparentales;

    @Column(name = "part_des_menages_d_une_personne")
    private Double partDesMenagesUnePersone;

    @Column(name = "services_publics_individu")
    private Double servicesPublicIndividu;

    @Column(name = "services_publics")
    private Double servicesPublics;

    @Column(name = "part_des_chomeurs")
    private Double partDesChomeurs;

    @Column(name = "part_des_personnes_agees_de_15_29_ans")
    private Double partDesPersonnesAge15To29;

    @Column(name = "part_des_personnes_agees_de_65_ans_plus")
    private Double partDesPersonnesAge65Plus;

    @Column(name = "part_des_non_ou_peu_diplomes_dans_la_population_non_scolarisee_")
    private Double partDesNonOuPeutDiplomes;

}
