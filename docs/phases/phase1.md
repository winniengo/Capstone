# Phase 1: User Authentication, Listing Model, JSON API, GoogleMaps API  (1 day)

## Rails
### Models
* User

### Controllers
* UsersController (create, new)
* SessionsController (create, new, destroy)
* StaticPagesController (root)
* Api::ListingsController (create, index, show)

### Views
* users/new.html.erb
* user/show.html.erb
* session/new.html.erb
* static_pages/root.html.erb
* listings/index.json.jbuilder
* listings/show.json.jbuilder

## Flux
### Views (React Components)
App
Map

### Stores

### Actions

### ApiUtil

## Gems/Libraries
* [bcrypt-ruby][bcrypt] (gem)
* [React][react] (npm)
* [Flux Dispatcher][dispatcher] (npm)
* [Google Maps JavaScript API][googleMaps] (api)

[bcrypt]: https://github.com/codahale/bcrypt-ruby
[react]: https://facebook.github.io/react/
[dispatcher]: https://facebook.github.io/flux/docs/dispatcher.html
[googleMaps]: https://developers.google.com/maps/documentation/javascript/
