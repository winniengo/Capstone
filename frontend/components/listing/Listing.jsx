var React = require('react'),
    ReactRouter = require('react-router');

var Listing = React.createClass({
  render: function() {
    var listingHeader = (
      "$" + this.props.listing.rent + " - " +
      this.props.listing.bedrooms + " Bed / " +
      this.props.listing.bathrooms + " Bath");
      console.log(listingHeader);
    return (
      <div className="listing">
        <div className="listing-header">{listingHeader}</div>
        <div className="listing-address">{this.props.listing.address}</div>
        !!!IMAGE SLIDESHOW!!!
        <div className="listing-description">{this.props.listing.description}</div>
       !!!EXPLORE NEARBY MAP!!!
      <div className="listing-details">
        Details
        <ul>
          <li>
            <div className="header">Rent</div>
            ${this.props.listing.rent}
          </li>
          <li className="even">
            <div className="header">Bedrooms</div>
            {this.props.listing.bedrooms}
          </li>
          <li>
            <div className="header">Bathrooms</div>
            {this.props.listing.bathrooms}
          </li>
          <li className="even">
            <div className="header">Available</div>
            Now
          </li>
          <li>
            <div className="header">Min. Lease</div>
            TODO
          </li>
          <li className="even">
            <div className="header">Parking</div>
            TODO
          </li>
          <li>
            <div className="header">Deposit</div>
            TODO
          </li>
          <li className="even">
            <div className="header">Broker Fee</div>
            TODO
          </li>
        </ul>
      </div>

      </div>
    );
  }
});

module.exports = Listing;
