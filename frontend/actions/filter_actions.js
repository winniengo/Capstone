var AppDispatcher = require('../dispatcher/dispatcher'),
    FilterConstants = require('../constants/filter_constants');

var FilterActions = {
  updateBounds: function(bounds) {
    console.log("update bounds");
    AppDispatcher.dispatch({
      actionType: FilterConstants.BOUND_PARAMS_RECEIVED,
      bounds: bounds
    });
  },

  updateMinRent: function (minRent){
    console.log("update min rent");
    AppDispatcher.dispatch({
      actionType: FilterConstants.MIN_RENT_RECEIVED,
      minRent: minRent,
    });
  },

  updateMaxRent: function (maxRent){
    console.log("update max rent");
    AppDispatcher.dispatch({
      actionType: FilterConstants.MAX_RENT_RECEIVED,
      maxRent: maxRent,
    });
  },

  updateMinBedrooms: function (minBedrooms){
    console.log("update min bedrooms");
    AppDispatcher.dispatch({
      actionType: FilterConstants.MIN_BEDROOMS_RECEIVED,
      minBedrooms: minBedrooms,
    });
  },

  updateMaxBedrooms: function (maxBedrooms){
    console.log("update max bedrooms");
    AppDispatcher.dispatch({
      actionType: FilterConstants.MAX_BEDROOMS_RECEIVED,
      maxBedrooms: maxBedrooms,
    });
  },

  updateMinBathrooms: function (minBathrooms){
    console.log("update min bedrooms");
    AppDispatcher.dispatch({
      actionType: FilterConstants.MIN_BATHROOMS_RECEIVED,
      minBathrooms: minBathrooms,
    });
  },

  updateMaxBathrooms: function (maxBathrooms){
    console.log("update max bedrooms");
    AppDispatcher.dispatch({
      actionType: FilterConstants.MAX_BATHROOMS_RECEIVED,
      maxBathrooms: maxBathrooms,
    });
  },

  updateLeaseType: function() {
    console.log("update lease type");
    AppDispatcher.dispatch({
      actionType: FilterConstants.LEASE_TYPE_RECEIVED,
    })
  },

  updateSubletType: function() {
    console.log("update sublet type");
    AppDispatcher.dispatch({
      actionType: FilterConstants.SUBLET_TYPE_RECEIVED,
    })
  },
};

module.exports = FilterActions;
