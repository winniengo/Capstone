/* globals google */

var React = require('react'),
    ReactDOM = require('react-dom');

var ListingStore = require('../stores/listing'),
    ApiUtil = require('../util/api_util');

var mapCenter = { lat: 37.776112, lng: -122.433113 }; // Painted Ladies, San Francisco, CA

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
          zoom: 12
        };

    this.map = new google.maps.Map(map, options);

    // center os United States
    // var geocoder = new google.maps.Geocoder();
    // geocoder.geocode({'address': 'US'}, function(results, status) {
    //   var northEast = results[0].geometry.viewport.getNorthEast();
    //   var southWest = results[0].geometry.viewport.getSouthWest();
    //
    //   this.map.fitBounds(results[0].geometry.viewport);
    // }.bind(this));

    this.listingListener = ListingStore.addListener(this._onChange);
    this.listenForMove();
  },

  componentWillUnmount: function() {
    this.listingListener.remove();
  },

  _onChange: function() {
    var listings = ListingStore.all();
    listings.forEach(this.addMarker);
  },

  addMarker: function(listing) {
    var position = new google.maps.LatLng(listing.lat, listing.lng);
    var marker = new google.maps.Marker({
        position: position,
        map: this.map,
        animation: google.maps.Animation.DROP
      });

    // marker.setListener('click', ) TODO
  },


  listenForMove: function() {
    google.maps.event.addListener(this.map, 'idle', function() {
      ApiUtil.fetchListings();
    });
  },

  render: function() {
    return(
      <div className="map" ref="map"/>
    );
  }
});

module.exports = Map;
