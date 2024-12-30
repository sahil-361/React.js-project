import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';

it('renders without crashing', () => {
 var a=1;
 var b=2;
 let c;
 c= a+b;
  //const div = document.createElement('div');
  console.log("final", c);
  // ReactDOM.render(<App />, div);
  // ReactDOM.unmountComponentAtNode(div);
});
