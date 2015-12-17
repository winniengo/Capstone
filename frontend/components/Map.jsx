/* globals google */

var React = require('react'),
    ReactDOM = require('react-dom');

var ListingStore = require('../stores/listing'),
    ApiUtil = require('../util/api_util'),
    FilterActions = require('../actions/filter_actions');

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
          zoom: 13
        };

    this.map = new google.maps.Map(map, options);
    this.listingListener = ListingStore.addListener(this._onChange);
    this.listenForMove();
    this.markers = [];

    // center os United States
    // var geocoder = new google.maps.Geocoder();
    // geocoder.geocode({'address': 'US'}, function(results, status) {
    //   var northEast = results[0].geometry.viewport.getNorthEast();
    //   var southWest = results[0].geometry.viewport.getSouthWest();
    //
    //   this.map.fitBounds(results[0].geometry.viewport);
    // }.bind(this));
  },

  componentDidUpdate: function () {
    this._onChange();
  },

  componentWillUnmount: function() {
    this.listingListener.remove();
  },

  _onChange: function() {
    var listings = ListingStore.all();
    var toAdd = [],
        toRemove = this.markers.slice(0);

    listings.forEach(function(listing) {
      var index = -1;
      // check if listing is a marker on map
      for (var i = 0; i < toRemove.length; i++) {
        if (toRemove[i].listingId === listing.id) {
          index = i;
          break;
        }
      }

      if (index === -1) { // not found, add marker
        toAdd.push(listing);
      } else { // found, keep marker
        toRemove.splice(index, 1);
      }
    });

    toAdd.forEach(this.addMarker);
    toRemove.forEach(this.removeMarker);
  },

  addMarker: function(listing) {
    var position = new google.maps.LatLng(listing.lat, listing.lng);
    var marker = new google.maps.Marker({
        position: position,
        map: this.map,
        animation: google.maps.Animation.DROP,
        listingId: listing.id
      });

    this.markers.push(marker);
    // marker.setListener('click', ) TODO
  },

  removeMarker: function(marker) {
    for (var i = 0; i < this.markers.length; i++) {
      if (this.markers[i].listingId === marker.listingId) {
        this.markers[i].setMap(null);
        this.markers.splice(i, 1);
        break;
      }
    }
  },

  listenForMove: function() {
    google.maps.event.addListener(this.map, 'idle', function() {
      var mapBounds = this.map.getBounds();
      var northEast = _getCoordsObj(mapBounds.getNorthEast());
      var southWest = _getCoordsObj(mapBounds.getSouthWest());

      var bounds = {
        northEast: northEast,
        southWest: southWest
      };

      FilterActions.updateBounds(bounds);
      ApiUtil.fetchListings();
    }.bind(this));
  },

  render: function() {
    return(
      <div className="map" ref="map"/>
    );
  }
});

module.exports = Map;
