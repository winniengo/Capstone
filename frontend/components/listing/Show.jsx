var React = require('react'),
    ReactRouter = require('react-router'),
    Link = ReactRouter.Link,
    ApiUtil = require('../../util/api_util'),
    ListingStore = require('../../stores/listing'),
    Listing = require('./Listing'),
    Map = require('../Map');

var ListingShow = React.createClass({
  contextTypes: {
    router: React.PropTypes.func
  },

  getInitialState: function() {
    var listingId = parseInt(this.props.params.listingId);
    var listing = this._findListingById(listingId);

    return {listing: listing};
  },

  _findListingById: function(listingId) {
    var ret;
    ListingStore.all().forEach(function(listing) {
      if (listingId === listing.id) {
        ret = listing;
      }
    });

    return ret || {};
  },

  componentDidMount: function() {
    console.log("listing mounted");
    this.listingListener = ListingStore.addListener(this._onChange);
    // ApiUtil.fetchListings();
  },

  componentWillUnmount: function() {
    this.listingListener.remove();
  },

  _onChange: function() {
    var listingId = this.props.params.listingId;
    var listing = this._findListingById(listingId);

    this.setState({listing: listing});
  },

  render: function() {
    return (
      <div>
        <Listing listing={this.state.listing}/>
      </div>
    );
  }
});

module.exports = ListingShow;
