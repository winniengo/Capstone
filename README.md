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

###Phase 1: User Authentication, Listing Model, JSON API, GoogleMaps API (1.5 days)

- Implement user signup and authentication (using bcrypt)
- Setup and render Google Maps as root homepage
- Setup a full JSON API for Listings

[Details][phase-one]

### Phase 2: Seeding and Bootstrap (1 day)
- Seed database with listings for testing

[Details][phase-two]

### Phase 3: Flux Architecture and Listing CRUD (2 days)
- Setup Flux, the React Router and the React view structure for the main application
- Implement Listing store and corresponding CRUD actions
- Create views for Listing 'Index' and 'IndexItem'

<!-- [Details][phase-three] -->

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

[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md
[phase-six]: ./docs/phases/phase6.md
