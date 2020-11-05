import { Cascader } from 'antd';
import 'antd/dist/antd.css';
import './area-selector.css';

// function onChange(value) {
//     console.log('selected:', value);
//   }
  
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
  const {citiesInfo, selectionHandler} = props;

  console.log('dd', citiesInfo);

  const citiesTreeOnlyRegions = citiesInfo.reduce( (acc, current) => {

    if(!acc.find(elem => elem.value === current.regionInsee)) {
        acc.push({
          value: current.regionInsee,
          label: current.regionName || current.regionInsee,
          children: [        
              {
                value: current.departmentInsee,
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
      .filter(elementReg => elementReg.value === current.regionInsee)
      .map(elementReg => {        
        if(!elementReg.children.find(elementDep => elementDep.value === current.departmentInsee)) {          
          elementReg.children.push({
            value: current.departmentInsee,
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
          .filter(elementDep => elementDep.value === current.departmentInsee)
          .map(elemDep => {
            elemDep.children.push({          
              value: current.cityInsee,                
              label: current.cityName
          })            
            return elemDep
          })

        }
        return elementReg;
      })

    
    }
    

    return acc;

  }, [])

  console.log('citiesTreeOnlyRegions', citiesTreeOnlyRegions);

  return (
          <div className="area-selector">
              <Cascader 
              options={citiesTreeOnlyRegions} 
              onChange={selectionHandler} 
              expandTrigger='hover' 
              showSearch={ {filter:  (inputValue, path) => path.some(option => option.label.toLowerCase().indexOf(inputValue.toLowerCase()) > -1) }}
              changeOnSelect 
              style={{ width: '80%' }}
              />
          </div>
    )
  }

export default AreaSelector

