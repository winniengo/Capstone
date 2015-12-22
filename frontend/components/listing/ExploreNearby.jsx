/* globals google */

var React = require('react'),
    ReactDOM = require('react-dom');

var center = { lat: 37.776112, lng: -122.433113 };

var ExploreNearby = React.createClass({
  componentDidMount: function() {
    var map = ReactDOM.findDOMNode(this.refs.exploreNearby),
    options = {
      center: center,
      zoom: 13
    };

    this.map = new google.maps.Map(map, options);
  },

  componentDidUpdate: function() {
    var position = new google.maps.LatLng(this.props.lat, this.props.lng);
    this.map.setCenter(position);
    this.addMarker(position);
  },

  addMarker: function(position) {
    this.marker = new google.maps.Marker({
      position: position,
      map: this.map,
    });
  },

  render: function() {
    return(
      <div className="listing-explore-nearby">
        Explore
        <div className="listing-map" ref="exploreNearby"/>
      </div>
    );
  }
});

module.exports = ExploreNearby;
