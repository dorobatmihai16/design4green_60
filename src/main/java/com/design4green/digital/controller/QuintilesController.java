package com.design4green.digital.controller;

import com.design4green.digital.model.Quintile;
import com.design4green.digital.repository.QuintileRepository;
import com.design4green.digital.service.CityService;
import com.design4green.digital.service.QuintilesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class QuintilesController {

    @Autowired
    private QuintilesService quintilesService;

    @RequestMapping(value="/get-result-by-region", method= RequestMethod.GET)
    public List<Quintile> getQuintilesByRegion(Integer regionInsee) {
        return quintilesService.findByRegionInsee(regionInsee);
    }

    @RequestMapping(value="/get-result-by-department", method= RequestMethod.GET)
    public List<Quintile> getQuintilesByDepartment(Integer departmentInsee) {
        return quintilesService.findByDepartmentInsee(departmentInsee);
    }

    @RequestMapping(value="/get-result-by-city", method= RequestMethod.GET)
    public List<Quintile> getQuintilesByCity(Integer cityInsee) {
        return quintilesService.findByCityInsee(cityInsee);
    }

    @RequestMapping(value="/get-result-interval-access-global", method= RequestMethod.GET)
    public List<Quintile> getQuintilesByAccesGlobalBetween(Double fromScore, Double toScore) {
        return quintilesService.findByAccessGlobalBetween(fromScore, toScore);
    }

    @RequestMapping(value="/get-result-interval-access-aux-interfaces", method= RequestMethod.GET)
    public List<Quintile> getQuintilesByAccessAuxInterfacesBetween(Double fromScore, Double toScore) {
        return quintilesService.findByAccessAuxInterfacesBetween(fromScore, toScore);
    }

    @RequestMapping(value="/get-result-interval-information", method= RequestMethod.GET)
    public List<Quintile> getQuintilesByAccessInformationBetween(Double fromScore, Double toScore) {
        return quintilesService.findByAccessAInformationBetween(fromScore, toScore);
    }

    @RequestMapping(value="/get-result-interval-competences-administratives", method= RequestMethod.GET)
    public List<Quintile> getQuintilesByCompetencesAdministratives(Double fromScore, Double toScore) {
        return quintilesService.findByCompetencesAdministrativesBetween(fromScore, toScore);
    }

    @RequestMapping(value="/get-result-interval-competences-numeriques", method= RequestMethod.GET)
    public List<Quintile> getQuintilesByCompetencesNumeriques(Double fromScore, Double toScore) {
        return quintilesService.findByCompetencesNumeriquesBetween(fromScore, toScore);
    }

    @RequestMapping(value="/get-result-interval-score-global", method= RequestMethod.GET)
    public List<Quintile> getQuintilesByScoreGlobalBetween(Double fromScore, Double toScore) {
        return quintilesService.findByScoreGlobalBetween(fromScore, toScore);
    }

    @RequestMapping(value="/get-result-interval-competences-global", method= RequestMethod.GET)
    public List<Quintile> getQuintilesByCompetencesGlobalBetween(Double fromScore, Double toScore) {
        return quintilesService.findByCompetencesGlobalBetween(fromScore, toScore);
    }
}
