var React = require('react');

var App = React.createClass({
  render: function(){
    return (
        <div className="app">
          <header><h1>CribMapper</h1></header>
          {this.props.children}
        </div>
    );
  }
});

module.exports = App;
