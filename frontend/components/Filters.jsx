var React = require('react'),
    FilterActions = require('../actions/filter_actions');

var Filters = React.createClass({
  currentMinRent: function() {
    return this.props.filterParams.minRent;
  },

  currentMaxRent: function() {
    return this.props.filterParams.maxRent;
  },

  minRentChanged: function (e) {
    FilterActions.updateMinRent(e.target.value);
  },

  maxRentChanged: function(e){
    FilterActions.updateMaxRent(e.target.value);
  },

  render: function() {
    return (
      <div>
        <h3>Rent</h3>
        <label>Min: </label>
        <input
          type="number"
          value={this.currentMinRent()}
          onChange={this.minRentChanged}
        />

        <label>Max: </label>
        <input
          type="number"
          value={this.currentMaxRent()}
          onChange={this.maxRentChanged}
        />

      <h3>Bedrooms</h3>
      <h3>Bathrooms</h3>
      <h3>Types</h3>
      </div>
    )
  }
});

module.exports = Filters;
