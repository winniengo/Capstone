var React = require('react'),
    ListingStore = require('../../stores/listing');

var Index = React.createClass({
  getInitialState: function() {
    return ({
      listings: ListingStore.all()
    });
  },

  componentDidMount: function() {
    this.listingListener = ListingStore.addListener(this._onChange);
  },

  componentWillUnmount: function() {
    this.listingListener.remove();
  },

  _onChange: function() {
    this.setState({listings: ListingStore.all()});
  },

  handleItemClick: function(listing) {
    // this.props.history.pushState(null, "listings/" + listing.id);
  },

  render: function() {
    return (
      <div>
        <ul>
          {this.state.listings.map(function(listing, i) {
            return <div key={i}>{listing.description}</div>;
            })}
        </ul>
      </div>
    );
  },
});

module.exports = Index;
