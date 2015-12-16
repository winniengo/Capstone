var Store = require('flux/utils').Store,
    AppDispatcher = require('../dispatcher/dispatcher');

var ListingStore = new Store(AppDispatcher);
var _listings = [];

ListingStore.all = function () {
  return _listings.slice(0);
};

window.ListingStore = ListingStore;

module.exports = ListingStore
