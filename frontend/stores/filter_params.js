var Store = require('flux/utils').Store,
    AppDispatcher = require('../dispatcher/dispatcher'),
    FilterConstants = require('../constants/filter_constants');

var FilterParamsStore = new Store(AppDispatcher),
    _params = {
      bounds: {northEast: {lat: 0, lng: 0}, southWest: {lat: 0, lng: 0}},
      rent: {min: 0, max: 10000},
      bathrooms: {min: 0, max: 10},
      bedrooms: {min: 0, max: 10},
      listing_type: {lease: true, sublet: true}
    };

FilterParamsStore.all = function() {
  return Object.assign({}, _params);
}

FilterParamsStore.params = function() { // controller params
  var params = this.all();
  params.listing_type = [];

  if (_params.listing_type.lease) params.listing_type.push('lease');
  if (_params.listing_type.sublet) params.listing_type.push('sublet');

  return params;
};

FilterParamsStore.__onDispatch = function(payload) {
  switch(payload.actionType) {
    case FilterConstants.BOUND_PARAMS_RECEIVED:
      _params.bounds = payload.bounds;
      FilterParamsStore.__emitChange();
      break;
    case FilterConstants.MIN_RENT_RECEIVED:
      _params.rent.min = payload.minRent;
      FilterParamsStore.__emitChange();
      break;
    case FilterConstants.MAX_RENT_RECEIVED:
      _params.rent.max = payload.maxRent;
      FilterParamsStore.__emitChange();
      break;
    case FilterConstants.MIN_BEDROOMS_RECEIVED:
      _params.bedrooms.min = payload.minBedrooms;
      FilterParamsStore.__emitChange();
      break;
    case FilterConstants.MAX_BEDROOMS_RECEIVED:
      _params.bedrooms.max = payload.maxBedrooms;
      FilterParamsStore.__emitChange();
      break;
    case FilterConstants.MIN_BATHROOMS_RECEIVED:
      _params.bathrooms.min = payload.minBathrooms;
      FilterParamsStore.__emitChange();
      break;
    case FilterConstants.MAX_BATHROOMS_RECEIVED:
      _params.bathrooms.max = payload.maxBathrooms;
      FilterParamsStore.__emitChange();
      break;
    case FilterConstants.LEASE_TYPE_RECEIVED:
      _params.listing_type.lease = !_params.listing_type.lease
      FilterParamsStore.__emitChange();
      break;
    case FilterConstants.SUBLET_TYPE_RECEIVED:
      _params.listing_type.sublet = !_params.listing_type.sublet
      FilterParamsStore.__emitChange();
      break;
  }
};

module.exports = FilterParamsStore;
