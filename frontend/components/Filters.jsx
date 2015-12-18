var React = require('react'),
    FilterActions = require('../actions/filter_actions');

var listingTypes = ['lease', 'sublet'];

var Filters = React.createClass({
  minRentChanged: function(e) {
    FilterActions.updateMinRent(e.target.value);
  },

  maxRentChanged: function(e){
    FilterActions.updateMaxRent(e.target.value);
  },

  minBedroomsChanged: function(e) {
    FilterActions.updateMinBedrooms(e.target.value);
  },

  maxBedroomsChanged: function(e){
    FilterActions.updateMaxBedrooms(e.target.value);
  },

  minBathroomsChanged: function(e) {
    FilterActions.updateMinBathrooms(e.target.value);
  },

  maxBathroomsChanged: function(e){
    FilterActions.updateMaxBathrooms(e.target.value);
  },

  leaseTypeChanged: function() {
    FilterActions.updateLeaseType();
  },

  subletTypeChanged: function() {
    FilterActions.updateSubletType();
  },

  render: function() {
    var leaseTypeChecked = this.props.filterParams.listing_type.lease ? "checked" : "",
        subletTypeChecked = this.props.filterParams.listing_type.sublet ? "checked" : "";

    return (
      <div className="filters">
        <h3>Rent</h3>
          <label>Min:</label>
          <input
            type="number"
            value={this.props.filterParams.rent.min}
            onChange={this.minRentChanged}
          />

          <label>Max:</label>
          <input
            type="number"
            value={this.props.filterParams.rent.max}
            onChange={this.maxRentChanged}
          />

        <h3>Bedrooms</h3>
          <label>Min:</label>
          <input
            type="number"
            value={this.props.filterParams.bedrooms.min}
            onChange={this.minBedroomsChanged}
          />

          <label>Max:</label>
          <input
            type="number"
            value={this.props.filterParams.bedrooms.max}
            onChange={this.maxBedroomsChanged}
          />

          <h3>Bathrooms</h3>
            <label>Min:</label>
            <input
              type="number"
              value={this.props.filterParams.bathrooms.min}
              onChange={this.minBathroomsChanged}
            />

            <label>Max:</label>
            <input
              type="number"
              value={this.props.filterParams.bathrooms.max}
              onChange={this.maxBathroomsChanged}
            />

          <h3>Types</h3>
            <label>Full Leases</label>
            <input
              type="checkbox"
              onChange={this.leaseTypeChanged}
              checked={leaseTypeChecked}/>
            <label>Sublets</label>
            <input
              type="checkbox"
              onChange={this.subletTypeChanged}
              checked={subletTypeChecked}/>
      </div>
    )
  }
});

module.exports = Filters;
