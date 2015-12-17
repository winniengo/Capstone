var Store = require('flux/utils').Store,
    AppDispatcher = require('../dispatcher/dispatcher'),
    FilterConstants = require('../constants/filter_constants');

var FilterParamsStore = new Store(AppDispatcher);
var _params = {bounds: {}};

FilterParamsStore.all = function() {
  return Object.assign({}, _params);
};

var updateBoundFilter = function(bounds) {
  _params.bounds = bounds;
};

FilterParamsStore.__onDispatch = function(payload) {
  switch(payload.actionType) {
    case FilterConstants.BOUND_PARAMS_RECEIVED:
      updateBoundFilter(payload.bounds);
      FilterParamsStore.__emitChange();
      break;
  }
};

module.exports = FilterParamsStore;
