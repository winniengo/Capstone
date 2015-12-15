var React = require('react');

var Map = require('./map');

var App = React.createClass({
  render: function(){
    return (
        <div>
          <header><h1>CribMapper</h1></header>
          <Map/>
          {this.props.children}
        </div>
    );
  }
});

module.exports = App;
