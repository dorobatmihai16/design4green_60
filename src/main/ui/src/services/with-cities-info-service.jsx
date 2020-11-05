import {backend_url_prefix} from './constants.js';

const withCititesInfoService = BaseComponent => (props) => {
    const retrieveCityInfo = () => {
        return fetch(`${backend_url_prefix}/get-cities`)
        .then(response => response.json());
        
    }
    return (<BaseComponent {...props} retrieveCityInfo={retrieveCityInfo}/> )
}

export default withCititesInfoService;