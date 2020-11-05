
import React, { useState, useEffect } from 'react';
import PropTypes from 'prop-types';

import './App.css';
import AreaSelector from './components/place-selector/area-selector';
import DataDisplay from './components/data-display/data-display';
import RangeSelector from './components/range-selector/range-selector';
import CookieBanner from 'react-cookie-banner';
import withCititesInfoService from './services/with-cities-info-service';


function App(props) {

  const {retrieveCityInfo} = props;

  const [cityInfo, setCityInfo] = useState([])

  useEffect( () => {
      retrieveCityInfo().then((info) => setCityInfo(info))
    }, [])

  return (
    <div className="App">
      <div className="selectors-area">
        <div className="area-selector-container">
        <AreaSelector citiesInfo={cityInfo}/>
        </div>        
        <div className="range-selector-container">
          <RangeSelector/>
        </div>
      </div>
      <DataDisplay/>
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
  retrieveCityInfo: PropTypes.func.isRequired
}

export default withCititesInfoService(App);
