import React, { Component } from 'react';
import { Card } from 'react-bootstrap'; // Updated import for v5
import axios from 'axios';

// This Component is a child Component of Customers Component
export default class CustomerDetails extends Component {

  constructor(props) {
    super(props);
    this.state = {}
  }

  // Function which is called when the component loads for the first time
  componentDidMount() {
    this.getCustomerDetails(this.props.val);
  }

  // Function which is called whenever the component is updated
  componentDidUpdate(prevProps) {
    // Get Customer Details only if props have changed
    if (this.props.val !== prevProps.val) {
      this.getCustomerDetails(this.props.val);
    }
  }

  // Function to load the customer details data from JSON
  getCustomerDetails(id) {
    axios.get(`assets/samplejson/customer${id}.json`).then(response => {
      this.setState({ customerDetails: response });
    });
  }

  render() {
    if (!this.state.customerDetails) {
      return (<p>Loading Data...</p>);
    }

    const { customerDetails } = this.state;

    return (
      <div className="customerdetails">
        <Card className="centeralign" bg="info" text="white">
          <Card.Header as="h3">{customerDetails.data.name}</Card.Header> {/* Replaced Panel.Heading */}
          <Card.Body>
            <p>Name: {customerDetails.data.name}</p>
            <p>Email: {customerDetails.data.email}</p>
            <p>Phone: {customerDetails.data.phone}</p>
            <p>City: {customerDetails.data.city}</p>
            <p>State: {customerDetails.data.state}</p>
            <p>Country: {customerDetails.data.country}</p>
            <p>Organization: {customerDetails.data.organization}</p>
            <p>Job Profile: {customerDetails.data.jobProfile}</p>
            <p>Additional Info: {customerDetails.data.additionalInfo}</p>
          </Card.Body>
        </Card>
      </div>
    );
  }
}
