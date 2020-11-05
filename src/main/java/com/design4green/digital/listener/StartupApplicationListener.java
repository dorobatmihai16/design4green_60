package com.design4green.digital.listener;

import com.design4green.digital.service.CityService;
import com.design4green.digital.service.QuintilesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

@Component
public class StartupApplicationListener implements ApplicationListener<ContextRefreshedEvent> {

    @Autowired
    private CityService cityService;

    @Autowired
    private QuintilesService quintilesService;

    @Override
    public void onApplicationEvent(ContextRefreshedEvent contextRefreshedEvent) {
        System.out.println("[StartupApplicationListener][onApplicationEvent] generating Cities and Quintiles");

        cityService.generateAndSaveCitiesByCollectionOfCityStatisticsFromDb();

        quintilesService.generateAndSaveQuintilesByCollectionOfCityStatisticsFromDb();

        System.out.println("[StartupApplicationListener][onApplicationEvent] generated Cities and Quintiles");
    }

}
