var React = require('react'),
    ReactRouter = require('react-router'),
    ImageCarousel = require('./ImageCarousel'),
    ExploreNearby = require('./ExploreNearby'),
    Details = require('./Details'),
    Contact = require('./Contact');

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
        <div className="listing-sidebar">
          <Details listing={listing}/>
          <Contact contact={listing.contact}/>
        </div>
        <ExploreNearby lat={listing.lat} lng={listing.lng}/>
      </div>
    );
  }
});

module.exports = Listing;
