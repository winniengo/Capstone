var React = require('react'),
    ReactRouter = require('react-router');

var Listing = React.createClass({
  render: function() {
    var Link = ReactRouter.Link;

    return (
      <div>
        {this.props.listing}
      </div>
    );
  }
});

module.exports = Listing;
