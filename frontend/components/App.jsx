var React = require('react');

var App = React.createClass({
  render: function(){
    return (
        <div className="app">
          {this.props.children}
        </div>
    );
  }
});

module.exports = App;
