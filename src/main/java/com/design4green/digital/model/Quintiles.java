package com.design4green.digital.model;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Data
@ToString
@Table(name="quintiles", schema = "public")
public class Quintiles {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="quintiles_id")
    private Long id;

    @Column(name="insee_com")
    private Integer cityInsee;

    @Column(name="insee_dep")
    private Integer departmentInsee;

    @Column(name="insee_reg")
    private Integer regionInsee;

    @Column(name="access_aux_interfaces")
    private Double accessAuxInterfaces;

    @Column(name="access_a_information")
    private Double accessAInformation;

    @Column(name="access_global")
    private Double accessGlobal;

    @Column(name="competeces_administratives")
    private Double competencesAdministratives;

    @Column(name="competeces_numeriques")
    private Double competencesNumeriques;

    @Column(name="competeces_global")
    private Double competencesGlobal;

    @Column(name="score_global")
    private Double scoreGlobal;

}
