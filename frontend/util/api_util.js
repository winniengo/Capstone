var ApiActions = require('../actions/api_actions');

var ApiUtil = {
  fetchListings: function() {
    $.get('api/listings', {}, function(listings) {
      ApiActions.receiveAllListings(listings);
    });
  },
};

module.exports = ApiUtil;
