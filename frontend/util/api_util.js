var ApiActions = require('../actions/api_actions'),
    FilterParamsStore = require('../stores/filter_params');

var ApiUtil = {
  fetchListings: function() {
    var params = FilterParamsStore.all();
    // console.log(params);
    $.get('api/listings', params, function(listings) {
      ApiActions.receiveAllListings(listings);
    });
  },
};

module.exports = ApiUtil;
