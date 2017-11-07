import React, { Component } from 'react';
import '../App.css';
import NextBus from './NextBus.js';
import Alerts from './Alerts.js';
import Directions from './Directions.js';

class App extends Component {

  render() {
    return (
      <div className="App">
        <header className="App-header">
          <h1 className="App-title">Front End Framework Experiment</h1>
        </header>
        <div className="Links">
          <ul> 
            <NextBus />
            <Directions />
            <Alerts />
          </ul>
        </div>
      </div>
    );
  }
}

export default App;
