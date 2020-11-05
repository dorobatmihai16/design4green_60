import { Slider } from 'antd';
import PropTypes from 'prop-types';
import './range-selector.css';

const marks = {
  1: '1',
  5: {
    style: {
      color: '#f50',
    },
    label: <strong>5</strong>,
  },
};

const RangeSelector = ({changeHandler}) => {
    return (
        <div className="range-container">
            <div>Filtre score globale</div>
            <Slider range onChange={changeHandler} marks={marks} min={1} max={5} defaultValue={[1, 5]} />
        </div>
    )
}

RangeSelector.propTypes = {
  changeHandler: PropTypes.func
}

RangeSelector.defualtProps = {
  changeHandler: ()=>{}
}

export default RangeSelector;