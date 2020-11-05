import { Cascader } from 'antd';
import 'antd/dist/antd.css';
import './area-selector.css';

function onChange(value) {
    console.log(value);
  }
  
// const options = [
//     {
//       value: {label: 'Auvergne Rhone Alpes', code: '23', type: 'region'},
//       label: 'Auvergne Rhone Alpes',
//       children: [
//         {
//           value: {label: 'Ain', code: '123', type: 'department'},
//           label: 'Ain',
//           children: [
//             {              
//               value: '12345',
//               label: 'Ambleon',
//             },
//             {
//               value: '12349',
//               label: 'Ambutrix',
//             },
//           ],
//         },
//       ],
//     },
//     {
//       value: 'jiangsu',
//       label: 'Jiangsu',
//       children: [
//         {
//           value: 'nanjing',
//           label: 'Nanjing',
//           children: [
//             {
//               value: 'zhonghuamen',
//               label: 'Zhong Hua Men',
//             },
//           ],
//         },
//       ],
//     },
//   ];

const AreaSelector = (props) => {
  const {citiesInfo} = props;

  console.log('dd', citiesInfo);

  const citiesTreeOnlyRegions = citiesInfo.reduce( (acc, current) => {

    if(!acc.find(elem => elem.value.code === current.regionInsee)) {
        acc.push({
          value: {label: current.regionName, code: current.regionInsee, type: 'region'},
          label: current.regionName,
          children: [        
              {
                value: {label: current.departmentName, code: current.departmentInsee, type: 'department'},
                label: current.departmentName,
                children: [
                  {              
                    value: current.cityInsee,
                    label: current.cityName,
                  },
                ],
            },
          ]
        })
    } 
    else {
      acc
      .filter(elementReg => elementReg.value.code === current.regionInsee)
      .map(elementReg => {
        console.log('push', elementReg, current);
        if(!elementReg.children.find(elementDep => elementDep.value.code === current.departmentInsee)) {          
          elementReg.children.push({
            value: {label: current.departmentName, code: current.departmentInsee, type: 'department'},
            label: current.departmentName,
            children: [
              {              
                value: current.cityInsee,
                label: current.cityName,
              },
            ],
          })
        } 
        else {
          elementReg.children
          .filter(elementDep => elementDep.value.code === current.departmentInsee)
          .map(elemDep => {
            elemDep.children.push(                  {              
              value: current.cityInsee,
              label: current.cityName,
            })            
            return elemDep
          })

        }
        return elementReg;
      })

    
    }
    

    return acc;

  }, [])

  return (
          <div className="area-selector">
              <Cascader 
              options={citiesTreeOnlyRegions} 
              onChange={onChange} 
              expandTrigger='hover' 
              showSearch={ {filter:  (inputValue, path) => path.some(option => option.label.toLowerCase().indexOf(inputValue.toLowerCase()) > -1) }}
              changeOnSelect />
          </div>
    )
  }

export default AreaSelector

