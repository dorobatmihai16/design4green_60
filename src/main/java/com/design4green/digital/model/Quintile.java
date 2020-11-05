package com.design4green.digital.model;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Data
@ToString
@Table(name="quintiles", schema = "public")
public class Quintile {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Long id;

    @Column(name="insee_com")
    private Integer cityInsee;

    @Column(name="nom_com")
    private String cityName;

    @Column(name="insee_dep")
    private Integer departmentInsee;

    @Column(name="nom_dep")
    private String departmentName;

    @Column(name="insee_reg")
    private Integer regionInsee;

    @Column(name="nom_reg")
    private String regionName;

    @Column(name="population_legale")
    private Integer populationLegale;

    @Column(name="acces_aux_interfaces_numeriques")
    private Double accessAuxInterfaces;

    @Column(name="acces_a_l_information")
    private Double accessAInformation;

    @Column(name="global_acces")
    private Double accessGlobal;

    @Column(name="competences_administatives")
    private Double competencesAdministratives;

    @Column(name="competences_numeriques_scolaires")
    private Double competencesNumeriques;

    @Column(name="global_competences")
    private Double competencesGlobal;

    @Column(name="score_global")
    private Double scoreGlobal;

}
