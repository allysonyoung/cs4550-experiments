import React, { Component } from 'react';

class NextBus extends Component {
  /**
   * TODO: Investigate how to load Google Maps API script after React rendering. 
   */

  // componentDidMount() {
  //   window.initMap = this.initMap;
  //   loadJS('https://maps.googleapis.com/maps/api/js?key=AIzaSyDsICMQ8Te4qMAuWnsx8vLE6aIHW5xOXgY&callback=initMap');

  // }

  // initMap() {
  //   map = new google.maps.Map(this.refs.map.getDOMNode(), { ... });
  // }
  render() {
    return (
      <div className="NextBus">
        <h1>Next Bus Tracker</h1>
        <p>This is the component that will house the Next Bus feature of our app.</p>
      </div>
    )
  }
}

export default NextBus;