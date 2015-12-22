var React = require('react'),
    ReactRouter = require('react-router'),
    ImageCarousel = require('./ImageCarousel'),
    ExploreNearby = require('./ExploreNearby');

var Listing = React.createClass({
  render: function() {
    var listing = this.props.listing;
    var header = "$" + listing.rent + " - " + listing.bedrooms + " Bed / " + listing.bathrooms + " Bath";

    return (
      <div className="listing-show clearfix">
        <div className="listing-main">
          <div className="listing-header">{header}</div>
          <div className="listing-address">{listing.address}</div>
          <ImageCarousel images={listing.images}/>
          <div className="listing-description">{listing.description}</div>

        </div>
        <div className="listing-details">
          Details
          <ul>
            <li>
              <div className="header">Rent</div>
              ${listing.rent}
            </li>
            <li className="even">
              <div className="header">Bedrooms</div>
              {listing.bedrooms}
            </li>
            <li>
              <div className="header">Bathrooms</div>
              {listing.bathrooms}
            </li>
            <li className="even">
              <div className="header">Available</div>
              Now
            </li>
            <li>
              <div className="header">Min. Lease</div>
              12 Months
            </li>
            <li className="even">
              <div className="header">Parking</div>
              No
            </li>
            <li>
              <div className="header">Deposit</div>
              $5000
            </li>
            <li className="even">
              <div className="header">Broker Fee</div>
              None
            </li>
          </ul>
        </div>
        <ExploreNearby lat={listing.lat} lng={listing.lng}/>
      </div>
    );
  }
});

module.exports = Listing;
