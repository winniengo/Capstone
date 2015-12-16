var React = require('react');

var Map = require('./map'),
    Index = require('./listings/index');

var App = React.createClass({
  render: function(){
    return (
        <div className="app">
          <header><h1>CribMapper</h1></header>
          <Map/>
          <Index/>
          {this.props.children}
        </div>
    );
  }
});

module.exports = App;
