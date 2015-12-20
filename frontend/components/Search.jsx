var React = require('react'),
    ApiUtil = require('../util/api_util'),
    ListingStore = require('../stores/listing'),
    FilterParamsStore = require('../stores/filter_params'),
    Filters = require('./Filters'),
    Map = require('./Map'),
    ListingIndex =require('./listing/Index');

var Search = React.createClass({
  contextTypes: {
    router: React.PropTypes.func
  },

  getInitialState: function() {
    return ({
      listings: ListingStore.all(),
      filterParams: FilterParamsStore.all()
    });
  },

  _listingsChanged: function() {
    this.setState({listings: ListingStore.all()});
  },

  _filterParamsChanged: function() {
    this.setState({filterParams: FilterParamsStore.all()});
    ApiUtil.fetchListings();
  },

  componentDidMount: function() {
    this.listingListener = ListingStore.addListener(this._listingsChanged);
    this.filterParamsListener = FilterParamsStore.addListener(this._filterParamsChanged);
    ApiUtil.fetchListings();
  },

  componentWillUnmount: function() {
    this.listingListener.remove();
    this.filterParamsListener.remove();
  },

  handleMarkerClick: function(listing) {
    console.log("marker " + listing.id + " clicked");
    this.props.history.pushState(null, "listings/" + listing.id);
  },

  render: function() {
    var listings = this.state.listings;

    return (
      <div className="search">
        <Map
          listings={listings}
          onMarkerClick={this.handleMarkerClick}
          />
        <div className="half">
          <Filters
            listings={listings}
            filterParams={this.state.filterParams}
            />
          <ListingIndex
            listings={listings}
            history={this.props.history}
            />
        </div>
      </div>
    )
  }
});

module.exports = Search;
