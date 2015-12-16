var React = require('react'),
    ReactDOM = require('react-dom'),
    ReactRouter = require('react-router'),
    Router = ReactRouter.Router,
    Route = ReactRouter.Route,
    IndexRoute = ReactRouter.IndexRoute;

var App = require('./components/App');

var ListingStore = require('./stores/listing'),
    ApiUtil = require('./util/api_util');

window.ListingStore = ListingStore;
window.ApiUtil = ApiUtil;

var routes = (
  <Route path="/" component={App}>

  </Route>
);

document.addEventListener("DOMContentLoaded", function () {
  var content = document.querySelector('#content');
  ReactDOM.render(<Router>{routes}</Router>, content);
});
