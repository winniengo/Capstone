#CribMapper

[Coming Soon!][heroku]

[heroku]: http://www.herokuapp.com

##Minimum Viable Product

CribMapper is a fullstack web application inspired by [PadMapper][padmapper] and implemented using Ruby on Rails and React.js. CribMapper allows users to:

- [ ] Create an account
- [ ] Sign in/Sign out
- [ ] Search for apartment listings nationwide
- [ ] Browse listings using a map interface
- [ ] Apply filters to search results
- [ ] Display nearby restaurants, bars, shops, etc.
- [ ] Save and share favorite listings
- [ ] Receive email alerts for future listings that match search criteria

[padmapper]: http://www.padmapper.com

##Design Documents

* [View Wireframes][view]
* [DB Schema][schema]

[view]: ./docs/views.md
[schema]: ./docs/schema.md

##Implementation Timeline

###Phase 1: User Authentication, JSON API, GoogleMaps API  (1 day)

- Implement user signup and authentication (using bcrypt)
- Setup and render Google Maps as root homepage
- Create a JSON API (create, index, show) for Listing

[Details][phase-one]

### Phase 2: Flux Architecture, Seeding, Bootstrap, and Listing CRUD (1 day)
- Setup Flux, the React Router and the React view structure for the main application
- Seed database with listings for testing
- Setup Boootstrap
- Implement Listing store and corresponding CRUD actions
- Create FilterParams store and apply filters to Google Maps

[Details][phase-two]

### Phase 3: Listing CRUD, GoogleMaps API, JSON API, and Bootstrap (2 days)
- Create views for Listing 'Index' and 'IndexItem'
- Implement search bar for Google Maps
- Complete JSON API (delete, update) for Listing
- Bootstrap project to-date

[Details][phase-three]

### Phase 4: Listings and Searches (1.5 days)
- Begin styling for Listing views
- Allow users to input search filters and view results
- Allow users to save and view favorite listings

<!-- [Details][phase-four] -->

### Phase 5: Search Mailer and Show Nearby (1.5 day)
- Allow users to show nearby restaurants, bars, shops, etc. on map
- Multiple sessions

<!-- [Details][phase-five] -->

### Phase 6: Beautifying and Garbage Collection (2 days)
- Beautify application
- Debug

<!-- [Details][phase-six] -->

### Bonus Features (TBD)
- Aggregate data from source sites and populate listings onto map
- Allow users to save search criteria and receive emails containing future matches
- Sublets

[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md
[phase-six]: ./docs/phases/phase6.md
