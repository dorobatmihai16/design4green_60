package com.design4green.digital.service.impl;

import com.design4green.digital.model.Quintiles;
import com.design4green.digital.repository.QuintilesRepository;
import com.design4green.digital.service.QuintilesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuintilesServiceImpl implements QuintilesService {

    @Autowired
    private QuintilesRepository quintilesRepository;


    @Override
    public List<Quintiles> findByRegionInsee(Integer regionInsee) {
        return quintilesRepository.findByRegionInsee(regionInsee);
    }

    @Override
    public List<Quintiles> findByDepartmentInsee(Integer departmentInsee) {
        return quintilesRepository.findByDepartmentInsee(departmentInsee);
    }

    @Override
    public List<Quintiles> findByCityInsee(Integer cityInsee) {
        return quintilesRepository.findByCityInsee(cityInsee);
    }

    @Override
    public List<Quintiles> findByScoreGlobalBetween(Integer fromScore, Integer toScore) {
        return quintilesRepository.findByScoreGlobalBetween(fromScore, toScore);
    }

}
