var React = require('react'),
    ReactRouter = require('react-router');

var ListingIndexItem = React.createClass({
  mixins: [ReactRouter.history],

  render: function() {
    var listing = this.props.listing;

    return (
      <div className="listing-index-item" onClick={this.props.onClick}>
        {listing.description}
        <br/>
        ${listing.rent}
      </div>
    );
  }
});

module.exports = ListingIndexItem;
