var AppDispatcher = require('../dispatcher/dispatcher'),
    FilterConstants = require('../constants/filter_constants');

var FilterActions = {
  updateBounds: function(bounds) {
    AppDispatcher.dispatch({
      actionType: FilterConstants.BOUND_PARAMS_RECEIVED,
      bounds: bounds
    });
  }
};

module.exports = FilterActions;
