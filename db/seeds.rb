winnie = User.create({
    email: 'winnengo@gmail.com',
    name: 'Winnie',
    password: 'password'
  })

sklyer = User.create({
    email: 'sklyercummins@gmail.com',
    name: 'Sklyer',
    password: 'password'
  })

mireille = User.create({
    email: 'mireilleguy@gmail.com',
    name: 'Mireille',
    password: 'password'
  })

Listing.create!({address: "1907 Golden Gate Ave, San Francisco, CA 94115, USA",
    lat: 37.778104,
    lng: -122.442096,
    placeId: "EjIxOTA3IEdvbGRlbiBHYXRlIEF2ZSwgU2FuIEZyYW5jaXNjbywgQ0EgOTQxMTUsIFVTQQ",
    rent: 7000.00,
    bedrooms: 7,
    bathrooms: 3,
    description: "frat chateau",
    listing_type: "lease",
    date_posted: '2015-12-1'
  })

Listing.create({
    address: '1558 Newcomb Ave, San Francisco, CA 94124, USA',
    lat: 37.734989,
    lng: -122.388824,
    placeId: 'ChIJgejW6g9_j4ARdZftO09PuoE',
    rent: 4000.00,
    bedrooms: 3,
    bathrooms: 1,
    description: "bae's house",
    listing_type: 'lease',
    date_posted: '2015-12-10'
  })

Listing.create({
    address: '642 Jones St, San Francisco, CA 94102, USA',
    lat: 37.787364,
    lng: -122.413031,
    placeId: 'ChIJ35kY4ZGAhYARlAv4LvlND3g',
    rent: 2000.00,
    bedrooms: 1,
    bathrooms: 1,
    description: "schmellen's house",
    listing_type: 'lease',
    date_posted: '2015-12-11'
  })

Listing.create({
    address: '734 Bush St, San Francisco, CA 94108, USA',
    lat: 37.790341,
    lng: -122.409499,
    placeId: 'ChIJBQiuNoyAhYARiXkkAgbDbHo',
    rent: 3000.00,
    bedrooms: 2,
    bathrooms: 1,
    description: "anna's house",
    listing_type: 'lease',
    date_posted: '2015-12-12'
  })
