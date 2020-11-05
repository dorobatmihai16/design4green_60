
import React, { useState, useEffect } from 'react';
import PropTypes from 'prop-types';
import './App.css';
import AreaSelector from './components/place-selector/area-selector';
import DataDisplay from './components/data-display/data-display';
import RangeSelector from './components/range-selector/range-selector';
import CookieBanner from 'react-cookie-banner';
import withCititesInfoService from './services/with-cities-info-service';
import withFragilityService from './services/with-get-fragility-service';


function App(props) {

  const {retrieveCityInfo, retrieveFragilityCity, retrieveFragilityDeparment, retrieveFragilityRegion} = props;

  const [cityInfo, setCityInfo] = useState([])

  const [indexInfo, setIndexInfo] = useState([])

  const transformIndexInfo = (data) => data.map(cityEntry => ({

    nomcom: cityEntry.cityName,
    codepostal: cityEntry.cityInsee,
    region: cityEntry.regionName,
    population: cityEntry.populationLegale,
    SCORE_GLOBAL: cityEntry.scoreGlobal,
    Access_aux_interface_numerique: cityEntry.competencesNumeriques,
    ACCESS_INFORMATION: cityEntry.accessAInformation,
    GLOBAL_ACCESS: cityEntry.accessGlobal,
    COMPETENCES_ADMINISTRATIVES: cityEntry.competencesAdministratives,
    COMPETENCES_NUMERIQUE: cityEntry.competencesNumeriques,
    GLOBAL_COMPETENCES: cityEntry.competencesGlobal
  }))

  const selectPlaceHandler = (value) => {
    console.log('selectPlaceHandler', value)

    if(value && value.length && value.length === 3) {
      
        console.log('retrieveFragilityCity', value[2])
        retrieveFragilityCity(value[2]).then(data => setIndexInfo(transformIndexInfo(data)))
        return;
    } else if(value && value.length && value.length === 2) {
      console.log('retrieveFragilityDeparment', value[1])
      retrieveFragilityDeparment(value[1]).then(data => setIndexInfo(transformIndexInfo(data)))
    } else if(value && value.length && value.length === 1) {
      console.log('retrieveFragilityRegion', value[0])
      retrieveFragilityRegion(value[0]).then(data => setIndexInfo(transformIndexInfo(data)))
    }
  }



  useEffect( () => {
      retrieveCityInfo().then((info) => setCityInfo(info))
    }, [])

  return (
    <div className="App">
      <div className="selectors-area">
        <div className="area-selector-container">
        <AreaSelector citiesInfo={cityInfo} selectionHandler={selectPlaceHandler} />
        </div>        
        <div className="range-selector-container">
          <RangeSelector/>
        </div>
      </div>
        
      <DataDisplay indexData={indexInfo} />      
        <div>
            <CookieBanner
                message="GDPR compliance. This site uses cookies and no personal data !"
                onAccept={() => {}}
                cookie="user-has-accepted-cookies" />
        </div>
    </div>
  );
}

App.propTypes = {
  retrieveCityInfo: PropTypes.func.isRequired,
  retrieveFragility: PropTypes.func.isRequired,
  retrieveFragilityCity: PropTypes.func.isRequired,
  retrieveFragilityDeparment: PropTypes.func.isRequired,
  retrieveFragilityRegion: PropTypes.func.isRequired,    
}

export default withFragilityService(withCititesInfoService(App));
