var React = require('react'),
    ListingIndexItem = require('./IndexItem');

var ListingIndex = React.createClass({
  handleItemClick: function(listing) {
    console.log(listing.id + "clicked");
    this.props.history.pushState(null, "listings/" + listing.id);
  },

  render: function() {
    var handleItemClick = this.handleItemClick;

    return (
      <div className="listing-index">
        <h3>Listings</h3>
        <ul>
          {this.props.listings.map(function(listing) {
            var onClick = handleItemClick.bind(null, listing);

            return (
              <ListingIndexItem
                key={listing.id}
                onClick={onClick}
                listing={listing}/>
            );})
          }
        </ul>
      </div>
    );
  },
});

module.exports = ListingIndex;
