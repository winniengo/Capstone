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

    var geocoder = new google.maps.Geocoder();
    geocoder.geocode({'address': 'US'}, function(results, status) {
      // var northEast = results[0].geometry.viewport.getNorthEast();
      // var southWest = results[0].geometry.viewport.getSouthWest();

      this.map.fitBounds(results[0].geometry.viewport);
    }.bind(this));
  },

  render: function() {
    return(
      <div className="map" ref="map"/>
    );
  }
});

module.exports = Map;