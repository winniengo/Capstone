var Store = require('flux/utils').Store,
    AppDispatcher = require('../dispatcher/dispatcher'),
    ListingConstants = require('../constants/listing_constants');

var ListingStore = new Store(AppDispatcher),
    _listings = [];

var resetListings = function(listings) {
  _listings = listings.slice(0);
};

ListingStore.all = function() {
  return _listings.slice(0);
};

ListingStore.__onDispatch = function(payload) {
  switch(payload.actionType) {
    case ListingConstants.LISTINGS_RECEIVED:
      resetListings(payload.listings);
      ListingStore.__emitChange();
      break;
  }
};

module.exports = ListingStore;
