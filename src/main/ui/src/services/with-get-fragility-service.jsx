import {backend_url_prefix} from './constants.js';

const withFragilityService = BaseComponent => (props) => {
    const retrieveFragility = (regionCode, depCode, comCode) => {

        if(comCode) {
            return fetch(`${backend_url_prefix}/fragilityCity`)
            .then(response => response.json());     
        } else if(depCode) {
            return fetch(`${backend_url_prefix}/fragilityDep`)
            .then(response => response.json());     
        } else if(regionCode) {
                return fetch(`${backend_url_prefix}/fragilityRegion`)
                .then(response => response.json());         
        } else {
            return fetch(`${backend_url_prefix}/fragilityAllData`)
            .then(response => response.json());         
        }

        
        
    }
    return (<BaseComponent {...props} retrieveFragility={retrieveFragility}/> )
}

export default withFragilityService;