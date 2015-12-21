var ApiActions = require('../actions/api_actions'),
    FilterParamsStore = require('../stores/filter_params');

var ApiUtil = {
  fetchListings: function() {
    var params = FilterParamsStore.params();

    $.get('api/listings', params, function(listings) {
      ApiActions.receiveAllListings(listings);
    });
  },

  fetchListing: function(id) {
    $.get('api/listings/' + id, function(listing) {
      ApiActions.receiveListing(listing);
    });
  },
};

module.exports = ApiUtil;
