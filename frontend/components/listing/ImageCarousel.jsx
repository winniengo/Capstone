var React = require('react'),
    Carousel = require('nuka-carousel');

var ImageCarousel = React.createClass({
  mixins: [Carousel.ControllerMixin],

  render: function() {
    var images = this.props.images || [];

    return (
      <div className ="listing-image-carousel">
        <Carousel>
          {images.map(function(image, i) {
            return <img key={i} src={image.source}/>
          })}
        </Carousel>
      </div>
    )
  },
});

module.exports = ImageCarousel;
