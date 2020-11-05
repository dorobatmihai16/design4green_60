import { Slider } from 'antd';
import './range-selector.css';

const marks = {
  0: '0°C',
  26: '26°C',
  37: '37°C',
  100: {
    style: {
      color: '#f50',
    },
    label: <strong>100°C</strong>,
  },
};

const RangeSelector = () => {
    return (
        <div className="range-container">
            <Slider range marks={marks} defaultValue={[26, 37]} />
        </div>
    )
}

export default RangeSelector;