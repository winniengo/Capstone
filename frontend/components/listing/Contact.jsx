var React = require('react');

var Contact = React.createClass({
  render: function() {
    var contact = this.props.contact? this.props.contact : {name: "", phone: "", email: ""};
    return (
      <div className="listing-contact">
        <div className="listing-contact-avator">
          <img src="http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,w_95/v1450914442/avatar_sees5m.png"/>
        </div>
        <div className="listing-contact-info">
          <div className="listing-contact-header">Contact<br/></div>
          {contact.name} <br/>
          {contact.phone} <br/>
          {contact.email} <br/>
        </div>
      </div>
    );
  }
});

module.exports = Contact;
