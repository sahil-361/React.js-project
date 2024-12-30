import React, { Component } from 'react';
import { Card, Button } from 'react-bootstrap'; // Updated import for v5
import CustomerDetails from './CustomerDetails';
import axios from 'axios';

export default class Customers extends Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedCustomer: 1,
      customerList: [] // Initialize customerList as an empty array
    };
  }

  // function which is called the first time the component loads
  componentDidMount() {
    this.getCustomerData();
  }

  // Function to get the Customer Data from json
  getCustomerData() {
    axios.get('assets/samplejson/customerlist.json').then(response => {
      this.setState({ customerList: response.data }); // Correct data access
    });
  }

  render() {
    if (!this.state.customerList.length) {
      return (<p>Loading data...</p>);
    }

    return (
      <div className="addmargin">
        <div className="col-md-3">
          {this.state.customerList.map(customer => (
            <Card key={customer.name} className="centeralign" bg="info" text="white" style={{ marginBottom: '1rem' }}> {/* Use Card instead of Panel */}
              <Card.Header as="h3">{customer.name}</Card.Header> {/* Card.Header replaces Panel.Heading */}
              <Card.Body>
                <p>{customer.email}</p>
                <p>{customer.phone}</p>
                <Button variant="info" onClick={() => this.setState({ selectedCustomer: customer.id })}>
                  Click to View Details
                </Button>
              </Card.Body>
            </Card>
          ))}
        </div>
        <div className="col-md-6">
          <CustomerDetails val={this.state.selectedCustomer} />
        </div>
      </div>
    );
  }
}
