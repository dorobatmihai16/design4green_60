import { Cascader } from 'antd';
import 'antd/dist/antd.css';
import './area-selector.css';

function onChange(value) {
    console.log(value);
  }
  
const options = [
    {
      value: {label: 'Auvergne Rhone Alpes', code: '23', type: 'region'},
      label: 'Auvergne Rhone Alpes',
      children: [
        {
          value: {label: 'Ain', code: '123', type: 'department'},
          label: 'Ain',
          children: [
            {              
              value: '12345',
              label: 'Ambleon',
            },
            {
              value: '12349',
              label: 'Ambutrix',
            },
          ],
        },
      ],
    },
    {
      value: 'jiangsu',
      label: 'Jiangsu',
      children: [
        {
          value: 'nanjing',
          label: 'Nanjing',
          children: [
            {
              value: 'zhonghuamen',
              label: 'Zhong Hua Men',
            },
          ],
        },
      ],
    },
  ];

const AreaSelector = (props) => {
  const {citiesInfo} = props;
  return (
          <div className="area-selector">
              <Cascader 
              options={options} 
              onChange={onChange} 
              expandTrigger='hover' 
              showSearch={ {filter:  (inputValue, path) => path.some(option => option.label.toLowerCase().indexOf(inputValue.toLowerCase()) > -1) }}
              changeOnSelect />
              {console.log(citiesInfo)}
          </div>
    )
  }

export default AreaSelector

