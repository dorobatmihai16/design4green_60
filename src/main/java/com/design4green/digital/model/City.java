package com.design4green.digital.model;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Data
@ToString
@Table(name="city", schema = "public")
public class City {

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

}
