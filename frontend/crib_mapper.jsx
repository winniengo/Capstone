var React = require('react'),
    ReactDOM = require('react-dom'),
    ReactRouter = require('react-router'),
    Router = ReactRouter.Router,
    Route = ReactRouter.Route,
    IndexRoute = ReactRouter.IndexRoute;

var App = require('./components/App'),
    Map = require('./components/Map'),
    Search = require('./components/Search'),
    ListingShow = require('./components/listing/Show');

var routes = (
  <Route path="/" component={App}>
    <IndexRoute component={Search}/>
    <Route path="listings/:listingId" component={ListingShow}/>
  </Route>
);

var handlesSlider = document.getElementById('slider-handles');

document.addEventListener("DOMContentLoaded", function () {
  var content = document.querySelector('#content');
  ReactDOM.render(<Router>{routes}</Router>, content);
});
