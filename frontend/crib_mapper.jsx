var React = require('react');
var ReactDOM = require('react-dom');
var Router = require('react-router').Router;
var Route = require('react-router').Route;
var IndexRoute = ReactRouter.IndexRoute;

var routes;

var MyComponent = React.createClass({
  render: function () {
    return(
      <div>Hello World</div>
    );
  }
});

document.addEventListener("DOMContentLoaded", function () {
  var content = document.querySelector('#content');
  ReactDOM.render(<MyComponent/>, content);
});
