/* globals wNumb */
var React = require('react'),
    Nouislider = require('react-nouislider'),
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

  rentSliderChange: function(values, handle) {
    if (handle === 0) {
      FilterActions.updateMinRent(parseInt(values[0]))
    } else {
      FilterActions.updateMaxRent(parseInt(values[1]))
    }
  },

  bedroomsSliderChange: function(values, handle) {
    console.log(values, handle);
    if (handle === 0) {
      FilterActions.updateMinBedrooms(parseInt(values[0]))
    } else {
      FilterActions.updateMaxBedrooms(parseInt(values[1]))
    }
  },

  bathroomsSliderChange: function(values, handle) {
    if (handle === 0) {
      FilterActions.updateMinBathrooms(parseInt(values[0]))
    } else {
      FilterActions.updateMaxBathrooms(parseInt(values[1]))
    }
  },

  render: function() {
    var leaseTypeChecked = this.props.filterParams.listing_type.lease ? "checked" : "",
        subletTypeChecked = this.props.filterParams.listing_type.sublet ? "checked" : "";

    return (
      <div className="filters">
        <h3>Rent</h3>
          <div className="filter-slider">
            <div className="noUi-target noUi-ltr noUi-horizontal noUi-background">
              <Nouislider
                range={{min: 0, max: 10000}}
                step={50}
                connect={true}
                start={[this.props.filterParams.rent.min, this.props.filterParams.rent.max]}
                onChange={this.rentSliderChange}
                />
            </div>
          </div>
          <div id="slider-snap-value-range">
            Min: {this.props.filterParams.rent.min} <br/>
            Max: {this.props.filterParams.rent.max}
          </div>

        <h3>Bedrooms</h3>
          <div className="filter-slider">
            <div className="noUi-target noUi-ltr noUi-horizontal noUi-background">
              <Nouislider
                range={{min: 0, max: 10}}
                step={1}
                connect={true}
                start={[this.props.filterParams.bedrooms.min, this.props.filterParams.bedrooms.max]}
                onChange={this.bedroomsSliderChange}
                />
            </div>
          </div>
          <div id="slider-snap-value-range">
            Min: {this.props.filterParams.bedrooms.min} <br/>
            Max: {this.props.filterParams.bedrooms.max}
          </div>

          <h3>Bathrooms</h3>
            <div className="filter-slider">
              <div className="noUi-target noUi-ltr noUi-horizontal noUi-background">
                <Nouislider
                  range={{min: 0, max: 10}}
                  step={1}
                  connect={true}
                  start={[this.props.filterParams.bathrooms.min, this.props.filterParams.bathrooms.max]}
                  onChange={this.bathroomsSliderChange}
                  />
              </div>
            </div>
            <div id="slider-snap-value-range">
              Min: {this.props.filterParams.bathrooms.min} <br/>
              Max: {this.props.filterParams.bathrooms.max}
            </div>

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
