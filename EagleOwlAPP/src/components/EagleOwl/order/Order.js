import React, { useState, useEffect } from 'react'
import { getList, getOrder, getAmount, getPhones } from './OrderFunctions'
import Container from 'react-bootstrap/Container'
import Layout from '../layout/Layout'
import Row from 'react-bootstrap/Row'
import Col from 'react-bootstrap/Col'
import Button from 'react-bootstrap/Button'
import Badge from 'react-bootstrap/Badge'

import ReactTable from 'react-table'
import { Chart } from "react-google-charts";
import 'react-table/react-table.css'
import './order.css';
import FilterCaseInsensitive from '../FilterCaseInsensitive'
var groupArray = require('group-array');


function Order() {
  const [orderList, setOrderList] = useState([]);
  const [chartOrderList, setChartOrderList] = useState([]);
  const [customerList, setCustomerList] = useState([]);
  const [groupCustomerList, setGroupCustomerList] = useState([]);
  const [orderCount, setOrderCount] = useState([]);
  const [amountCount, setAmountCount] = useState([]);
  const [isVisible, setIsVisible] = useState(false);


  useEffect(() => {
    getAll()
  }, []);

  function getAll() {

    getOrder().then(data => {
      setOrderCount(data)
    })

    getAmount().then(data => {
      setAmountCount([...data][0]['total_amount'])
    })

    getList().then(data => {

      const odList = groupArray([...data], 'Phone');
      const groupList = [];
      const groupCount = [{ "no": '1', "customerCount": 0, "noKey": 1 }, { "no": '2', "customerCount": 0, "noKey": 2 }, { "no": '3', "customerCount": 0, "noKey": 3 }, { "no": '4', "customerCount": 0, "noKey": 4 }, { "no": '5+', "customerCount": 0, "noKey": 5 }];

      getPhones().then(data => {
        for (var i = 0; i < [...data].length; i++) {
          for (var j = 0; j < odList[[...data][i]['Phone']].length; j++) {
          }
          const groupItem = [];
          groupItem.push([...data][i]['Phone'], [...data][i]['Name'], j)
          groupList.push(groupItem)
          if (j > 4) {
            groupCount[4]['customerCount'] = groupCount[4]['customerCount'] + 1;
          }
          else {
            groupCount[parseInt(j) - parseInt(1)]['customerCount'] = groupCount[parseInt(j) - parseInt(1)]['customerCount'] + 1;
          }
        }
        setGroupCustomerList(groupList)
        setOrderList(groupCount)
        const groupChart = [["No. of orders", "Count of customers"]];
        for (var k = 0; k < groupCount.length; k++) {
          groupChart.push([groupCount[k]['no'], groupCount[k]['customerCount']])
        }
        setChartOrderList(groupChart)
      })
    })

  }
  function getCustomerList(val) {
    const cList = [];
    if (val > 4) {
      for (var i = 0; i < groupCustomerList.length; i++) {
        if (val <= groupCustomerList[i][2]) {
          cList.push({ name: groupCustomerList[i][1], phone: groupCustomerList[i][0] });
        }
      }

    }
    else {
      for (var i = 0; i < groupCustomerList.length; i++) {
        if (val == groupCustomerList[i][2]) {
          cList.push({ name: groupCustomerList[i][1], phone: groupCustomerList[i][0] });
        }
      }
    }

    setCustomerList(cList)
    setIsVisible(true)

  }

  const customerData = customerList;
  const customerColumns = [{
    Header: 'Sl No.',
    accessor: 'sl',
    maxWidth: 50,
    id: "row",
    Cell: (row) => {
      return <div>{row.index + 1}</div>;
    }

  }, {
    Header: 'Name',
    accessor: 'name',
    filterable: true,
    className: 'table-cell'
  }, {
    Header: 'Phone No',
    accessor: 'phone',
    filterable: true,
    className: 'table-cell'
  }]

  const data = orderList;
  const columns = [{
    Header: 'No. of orders',
    accessor: 'no',
    className: 'table-cell'
  }, {
    Header: 'Customer List',
    accessor: 'list',
    className: 'text-center',
    Cell: row => {
      return (
        <button onClick={() => { getCustomerList(row.original.noKey) }} >Check List</button>
      )
    }
  }, {
    Header: 'Count of customers',
    accessor: 'customerCount',
    className: 'table-cell'
  }]
  return (
    <Layout>
      <div className="curd-wrapper">
        <Container>
          <Row>
            <div className="curd-section-wrapper">
              <div className="curd-section-header">
                <Row>
                  <Col sm={6}>
                    <div className="curd-table-title">
                      <h2>Manage Orders</h2>
                    </div>
                  </Col>
                  <Col sm={6}>
                    <Button variant="primary">
                      Total order <Badge variant="light">{orderCount}</Badge>
                    </Button>
                    <Button variant="primary">
                      Total Amount <Badge variant="light">{amountCount}</Badge>
                    </Button>
                    
                  </Col>
                </Row>
              </div>
              {(isVisible != true) ?
                <ReactTable data={data} columns={columns} defaultFilterMethod={FilterCaseInsensitive} defaultPageSize={5} className="custom-table" /> : <><ReactTable data={customerData} columns={customerColumns} defaultFilterMethod={FilterCaseInsensitive} defaultPageSize={5} className="custom-table" /><Button variant="light" size="lg" block onClick={() => { setIsVisible(false) }}> Back </Button></>}
              <div className="mt-5">

                <Chart
                  width={'500px'}
                  height={'100%'}
                  chartType="Bar"
                  loader={<div>Loading Chart</div>}
                  data={chartOrderList}
                  options={{
                    chart: {
                      title: 'Company Performance',
                    },
                  }}
                />
              </div>
            </div>
          </Row>
        </Container>
      </div>
    </Layout>
  );
}

export default Order;

