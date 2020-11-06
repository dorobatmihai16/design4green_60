import { Table, Button } from 'antd';
import PropTypes from 'prop-types';
import { DownloadOutlined } from '@ant-design/icons';
import './data-display.css';
import jsPDF from "jspdf";
import "jspdf-autotable";

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

const exportPDF = (indexData,columns) => {
  const unit = "pt";
  const size = "A4"; // Use A1, A2, A3 or A4
  const orientation = "landscape"; // portrait or landscape

  const marginLeft = 40;
  const doc = new jsPDF(orientation, unit, size);

  doc.setFontSize(15);

  const title = "INDICE DE FRAGILITÉ NUMÉRIQUE";
  const headers = [columns.map(column=>column.title)];

  const data = indexData.map(elt=> [elt.nomcom, elt.codepostal, elt.region, elt.population, elt.SCORE_GLOBAL, elt.Access_aux_interface_numerique, elt.ACCESS_INFORMATION, elt.GLOBAL_ACCESS, elt.COMPETENCES_ADMINISTRATIVES, elt.COMPETENCES_NUMERIQUE, elt.GLOBAL_COMPETENCES]);
  console.log("indexData",indexData);
  let content = {
    startY: 50,
    head: headers,
    body: data
  };

  doc.text(title, marginLeft, 40);
  doc.autoTable(content);
  doc.save("INDICE_DE_FRAGILITÉ_NUMÉRIQUE.pdf")
}

const DataDisplay = ({indexData}) => (
    <div className="main-table">
       <Table dataSource={indexData} columns={columns} />

       { ( indexData && indexData.length ) ?
        (<Button onClick={() => exportPDF(indexData, columns)} type="primary" shape="round" icon={<DownloadOutlined />} size="large">
            Génère un rapport
        </Button>      ) : null
        }
    </div>
)

DataDisplay.propTypes = {
  indexData: PropTypes.array
}

DataDisplay.defaultProps = {
  indexData: []
}

export default DataDisplay;