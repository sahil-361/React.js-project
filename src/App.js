import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import Customers from './Customers'
import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom'; // Use Routes and Navigate instead of Switch and Redirect

class App extends Component {
  render() {
    console.log("Host URL" + process.env.PUBLIC_URL);
    return (
      <Router basename={process.env.PUBLIC_URL}>
        <div className="App">
          <header className="App-header">
            <img src={logo} className="App-logo" alt="logo" />
            <h1 className="App-title">Simple React App</h1>
          </header>
          <Routes>
            {/* Use Navigate to redirect */}
            <Route path="/" element={<Navigate to="/customerlist" />} />
            
            {/* Use element prop for components */}
            <Route path='/customerlist' element={<Customers />} />
          </Routes>
        </div>
      </Router>
    );
  }
}

export default App;
