var React = require('react'),
    Carousel = require('nuka-carousel');

var ImageCarousel = React.createClass({
  mixins: [Carousel.ControllerMixin],

  render: function() {
    return (
      <Carousel>

      </Carousel>
    )
  },
});

module.exports = ImageCarousel;
