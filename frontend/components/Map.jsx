/* globals google */

var React = require('react'),
    ReactDOM = require('react-dom');

var mapCenter = { lat: 37.7758, lng: -122.435 }; // San Francisco, CA

function _getCoordsObj(latLng) {
  return {
    lat: latLng.lat(),
    lng: latLng.lng()
  };
}

var Map = React.createClass({
  componentDidMount: function() {
    var map = ReactDOM.findDOMNode(this.refs.map),
        options = {
          center: mapCenter,
          zoom: 13
        };

    this.map = new google.maps.Map(map, options);
  },

  render: function() {
    return(
      <div className="map" ref="map"/>
    );
  }
});

module.exports = Map;
