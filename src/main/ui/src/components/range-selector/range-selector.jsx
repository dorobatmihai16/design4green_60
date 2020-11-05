import { Slider } from 'antd';
import './range-selector.css';

const marks = {
  0: '0',
  100: {
    style: {
      color: '#f50',
    },
    label: <strong>280</strong>,
  },
};

const RangeSelector = () => {
    return (
        <div className="range-container">
            <div>Filtre score globale</div>
            <Slider range marks={marks} defaultValue={[0, 280]} />
        </div>
    )
}

export default RangeSelector;