var React = require('react'),
    FilterActions = require('../actions/filter_actions');

var listingTypes = ['lease', 'sublet'];

var Filters = React.createClass({
  minRentChanged: function (e) {
    FilterActions.updateMinRent(e.target.value);
  },

  maxRentChanged: function(e){
    FilterActions.updateMaxRent(e.target.value);
  },

  minBedroomsChanged: function (e) {
    FilterActions.updateMinBedrooms(e.target.value);
  },

  maxBedroomsChanged: function(e){
    FilterActions.updateMaxBedrooms(e.target.value);
  },

  minBathroomsChanged: function (e) {
    FilterActions.updateMinBathrooms(e.target.value);
  },

  maxBathroomsChanged: function(e){
    FilterActions.updateMaxBathrooms(e.target.value);
  },

  render: function() {
    return (
      <div>
        <h3>Rent</h3>
        <label>Min: </label>
        <input
          type="number"
          value={this.props.filterParams.rent.min}
          onChange={this.minRentChanged}
        />

        <label>Max: </label>
        <input
          type="number"
          value={this.props.filterParams.rent.max}
          onChange={this.maxRentChanged}
        />

      <h3>Bedrooms</h3>
        <label>Min: </label>
        <input
          type="number"
          value={this.props.filterParams.bedrooms.min}
          onChange={this.minBedroomsChanged}
        />

        <label>Max: </label>
        <input
          type="number"
          value={this.props.filterParams.bedrooms.max}
          onChange={this.maxBedroomsChanged}
        />
      <h3>Bathrooms</h3>
        <label>Min: </label>
        <input
          type="number"
          value={this.props.filterParams.bathrooms.min}
          onChange={this.minBathroomsChanged}
        />

        <label>Max: </label>
        <input
          type="number"
          value={this.props.filterParams.bathrooms.max}
          onChange={this.maxBathroomsChanged}
        />
      <h3>Types</h3> // TODO
        <label></label>
        {listingTypes.map(function(type, i) {
          console.log(type)
          return <input type="checkbox" value={type} key={i}/>
        })}
      </div>
    )
  }
});

module.exports = Filters;
