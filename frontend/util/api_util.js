var ApiActions = require('../actions/api_actions');

var Util = {
  fetchListings: function() {
    $.get('api/listings', {}, function(listings) {
      ApiActions.receiveAllListings(listings);
    });
  },
};

module.exports = Util;
