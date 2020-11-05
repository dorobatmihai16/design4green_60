import { Table } from 'antd';

import './data-display.css';

const columns = [
  {
    title: 'Nom Com',
    dataIndex: 'nomcom',
    key: 'nomcom',    
  },
  {
    title: 'Code Postal',
    dataIndex: 'codepostal',
    key: 'codepostal',
  },
  {
    title: 'Region',
    dataIndex: 'region',
    key: 'region',
  },
  {
    title: 'Population',
    key: 'population',
    dataIndex: 'population'
  },
  {
    title: 'Score Global',
    key: 'SCORE_GLOBAL',
    className: 'column_score_global',
    dataIndex: 'SCORE_GLOBAL',
    // render: (value) => (<div>{value}V</div>),
    defaultSortOrder: 'descend',
    sorter: (a, b) => a.SCORE_GLOBAL - b.SCORE_GLOBAL,
  },
  {
    title: 'Access aux interface numerique',
    key: 'Access_aux_interface_numerique',
    dataIndex: 'Access_aux_interface_numerique'
  },
  {
    title: 'Access a l\'information',
    key: 'ACCESS_INFORMATION',
    dataIndex: 'ACCESS_INFORMATION'
  },
  {
    title: 'Global Access',
    key: 'GLOBAL_ACCESS',
    className: 'column_score_global_access',
    dataIndex: 'GLOBAL_ACCESS'
  },
  {
    title: 'Competences administratives',
    key: 'COMPETENCES_ADMINISTRATIVES',
    dataIndex: 'COMPETENCES_ADMINISTRATIVES'
  },
  {
    title: 'Competences numerique',
    key: 'COMPETENCES_NUMERIQUE',
    dataIndex: 'COMPETENCES_NUMERIQUE'
  },
  {
    title: 'Global Competences',
    key: 'GLOBAL_COMPETENCES',
    className: 'column_score_global_competences',
    dataIndex: 'GLOBAL_COMPETENCES'
  },
  

];

const data = [
  {
    nomcom: 'Aast',
    codepostal: '12345',
    region: 'Nouvel Aquitaine',
    population: '177',
    SCORE_GLOBAL: '45,3',
    Access_aux_interface_numerique: '45,4',
    ACCESS_INFORMATION: '45,3',
    GLOBAL_ACCESS: '45,3',
    COMPETENCES_ADMINISTRATIVES: '45',
    COMPETENCES_NUMERIQUE: '44',
    GLOBAL_COMPETENCES: '45'
  },
  {
    nomcom: 'Aast1',
    codepostal: '12345',
    region: 'Nouvel Aquitaine',
    population: '177',
    SCORE_GLOBAL: '31',
    Access_aux_interface_numerique: '45,4',
    ACCESS_INFORMATION: '45,3',
    GLOBAL_ACCESS: '45,3',
    COMPETENCES_ADMINISTRATIVES: '45',
    COMPETENCES_NUMERIQUE: '44',
    GLOBAL_COMPETENCES: '45'
  },  
];  
  


const DataDisplay = () => (
    <div className="main-table">
       <Table dataSource={data} columns={columns} />;
    </div>
)

export default DataDisplay;