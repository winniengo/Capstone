var AppDispatcher = require('../dispatcher/dispatcher'),
    ListingConstants = require('../constants/listing_constants');

var ApiActions = {
  receiveAllListings: function(listings) {
    AppDispatcher.dispatch({
      actionType: ListingConstants.LISTINGS_RECEIVED,
      listings: listings
    });
  },

  receiveListing: function(listing) {
    AppDispatcher.dispatch({
      actionType: ListingConstants.LISTING_RECEIVED,
      listing: listing
    });
  },
}

module.exports = ApiActions;
