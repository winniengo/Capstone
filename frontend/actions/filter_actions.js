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
  }
};

module.exports = FilterActions;
