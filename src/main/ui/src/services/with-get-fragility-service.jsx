import {backend_url_prefix} from './constants.js';


// retrieveFragilityCity: PropTypes.func.isRequired,
// retrieveFragilityDeparment: PropTypes.func.isRequired,
// retrieveFragilityRegion: PropTypes.func.isRequired, 



const withFragilityService = BaseComponent => (props) => {


    const retrieveFragilityCity = comCode => fetch(`${backend_url_prefix}/get-result-by-city?cityInsee=${comCode}`).then(response => response.json());
    const retrieveFragilityDeparment = depCode => fetch(`${backend_url_prefix}/get-result-by-department?departmentInsee=${depCode}`).then(response => response.json());
    const retrieveFragilityRegion = regionCode => fetch(`${backend_url_prefix}/get-result-by-region?regionInsee=${regionCode}`).then(response => response.json());

    return (<BaseComponent 
        {...props} 
        retrieveFragilityCity={retrieveFragilityCity} 
        retrieveFragilityDeparment={retrieveFragilityDeparment} 
        retrieveFragilityRegion={retrieveFragilityRegion}/> 
        )
}

export default withFragilityService;