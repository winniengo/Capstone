var React = require('react'),
    Nouislider = require('react-nouislider'),
    FilterActions = require('../actions/filter_actions');

var Filters = React.createClass({
  rentSliderChange: function(values, handle) {
    if (handle === 0) {
      FilterActions.updateMinRent(parseInt(values[0]))
    } else {
      FilterActions.updateMaxRent(parseInt(values[1]))
    }
  },

  bedroomsSliderChange: function(values, handle) {
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

  leaseTypeChanged: function() {
    FilterActions.updateLeaseType();
  },

  subletTypeChanged: function() {
    FilterActions.updateSubletType();
  },

  render: function() {
    var rentRange = "$" + this.props.filterParams.rent.min + " - " + this.props.filterParams.rent.max + "+",
        bedroomsRange = this.props.filterParams.bedrooms.min + " - " + this.props.filterParams.bedrooms.max + "+",
        bathroomsRange = this.props.filterParams.bathrooms.min + " - " + this.props.filterParams.bathrooms.max + "+",
        leaseTypeChecked = this.props.filterParams.listing_type.lease ? "checked" : "",
        subletTypeChecked = this.props.filterParams.listing_type.sublet ? "checked" : "";

    return (
      <div className="filter-container">
        <div className="filter-label">
          <div className="filter-header">Rent</div>
          <div className= "filter-range">{rentRange}</div>
        </div>
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

          <div className="filter-label">
              <div className="filter-header">Bedrooms</div>
              <div className= "filter-range">{bedroomsRange}</div>
            </div>
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

            <div className="filter-label">
                <div className="filter-header">Bathrooms</div>
                <div className= "filter-range">{bathroomsRange}</div>
              </div>
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

          <div className="filter-label filter-header">Types</div>
            <div className="filter-checkbox">
              {"Full Leases: "}
              <input
                type="checkbox"
                onChange={this.leaseTypeChanged}
                checked={leaseTypeChecked}/>
            </div>
            <div className="filter-checkbox">
            {"Sublets: "}
            <input
              type="checkbox"
              onChange={this.subletTypeChanged}
              checked={subletTypeChecked}/>
            </div>
      </div>
    )
  }
});

module.exports = Filters;
