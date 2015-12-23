var React = require('react');

var Details = React.createClass({
  render: function() {
    var listing = this.props.listing;

    var parking = listing.parking ? "Garage" : "No";
    var fee = listing.fee? "Yes" : "No";
    var pets;
    if (listing.cats && listing.dogs) {
      pets = "Both";
    } else if (listing.cats) {
      pets = "Cats Only";
    } else if (listing.dogs) {
      pets = "Dogs Only";
    } else {
      pets = "Neither";
    }


    return (
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
            {listing.min_lease} Months
          </li>
          <li className="even">
            <div className="header">Deposit</div>
            ${listing.deposit}
          </li>
          <li>
            <div className="header">Broker Fee?</div>
            {fee}
          </li>
          <li className="even">
            <div className="header">Parking?</div>
            {parking}
          </li>
          <li>
            <div className="header">Cats/Dogs Allowed?</div>
            {pets}
          </li>
        </ul>
      </div>
    );
  }
});

module.exports = Details;
