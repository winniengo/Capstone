var React = require('react'),
    ReactRouter = require('react-router'),
    ApiUtil = require('../../util/api_util'),
    ListingStore = require('../../stores/listing'),
    Map = require('../Map');

var ListingShow = React.createClass({
  getInitialState: function() {
    var listingId = this.props.params.listingId;
    var listing = this._findListingById(listingId);

    return {listing: listing};
  },

  _findListingById: function(id) {
    ListingStore.all().forEach(function(listing) {
      if (id === listing.id) {
        return listing;
      }
    });

    return {};
  },

  componentDidMount: function() {
    this.listingListener = ListingStore.addListener(this._onChange);
    ApiUtil.fetchListings();
  },

  componentWillUnmount: function() {
    this.listingListener.remove();
  },

  _onChange: function() {
    var listingId = this.props.params.listingId;
    var listing = this._findBenchById(listingId);

    this.setState({listing: listing});
  },

  render: function() {
    var listings = [];

    if (this.state.listing) {
      listings.push(this.state.listing);
    }

    var Link = ReactRouter.Link;

    return (
      <div>
        <Link to="/">Home</Link>s
        <Listing listing={this.state.listing} className="listing"/>
      </div>
    );
  }
});

module.exports = ListingShow;
