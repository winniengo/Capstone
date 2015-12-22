winnie = User.create({
    email: 'winniengo@gmail.com',
    name: 'Winnie',
    password: 'password'
  })

skyler = User.create({
    email: 'skylercummins@gmail.com',
    name: 'Skyler',
    password: 'password'
  })

mireille = User.create({
    email: 'mireilleguy@gmail.com',
    name: 'Mireille',
    password: 'password'
  })

l1 = Listing.create!({
    address: Faker::Address.street_address + ', San Francisco, CA 94108, USA',
    lat: 37.778104,
    lng: -122.442096,
    rent: 7000.00,
    bedrooms: 7,
    bathrooms: 3,
    description: Faker::Lorem.paragraph,
    listing_type: "lease",
    date_posted: '2015-12-1'
  })

l2 = Listing.create({
    address: Faker::Address.street_address + ', San Francisco, CA 94108, USA',
    lat: 37.734989,
    lng: -122.388824,
    rent: 4000.00,
    bedrooms: 3,
    bathrooms: 1,
    description: Faker::Lorem.paragraph,
    listing_type: 'lease',
    date_posted: '2015-12-10'
  })

l3 = Listing.create({
    address: Faker::Address.street_address + ', San Francisco, CA 94108, USA',
    lat: 37.787364,
    lng: -122.413031,
    rent: 2000.00,
    bedrooms: 1,
    bathrooms: 1,
    description: Faker::Lorem.paragraph,
    listing_type: 'lease',
    date_posted: '2015-12-11'
  })

l4 = Listing.create({
    address: Faker::Address.street_address + ', San Francisco, CA 94108, USA',
    lat: 37.790341,
    lng: -122.409499,
    rent: 3000.00,
    bedrooms: 2,
    bathrooms: 1,
    description: Faker::Lorem.paragraph,
    listing_type: 'lease',
    date_posted: '2015-12-12'
  })

  l5 = Listing.create({
    address: Faker::Address.street_address + ', San Francisco, CA 94108, USA',
    lat: 37.792542,
    lng: -122.440472,
    rent: 9500.00,
    bedrooms: 5,
    bathrooms: 3.5,
    description: Faker::Lorem.paragraph,
    listing_type: 'lease',
    date_posted: '2015-12-12'
  })

  l6 = Listing.create({
    address: Faker::Address.street_address + ', San Francisco, CA 94108, USA',
    lat: 37.801263,
    lng: -122.433114,
    rent: 3000.00,
    bedrooms: 1,
    bathrooms: 1,
    description: Faker::Lorem.paragraph,
    listing_type: 'lease',
    date_posted: '2015-12-12'
  })

  l7 = Listing.create({
    address: Faker::Address.street_address + ', Oakland, CA 94606, USA',
    lat: 37.801698,
    lng: -122.252343,
    rent: 2000.00,
    bedrooms: 2,
    bathrooms: 2,
    description: Faker::Lorem.paragraph,
    listing_type: 'lease',
    date_posted: '2015-12-12'
  })

  l8 = Listing.create({
    address: Faker::Address.street_address + ', Piedmont, CA 94620, USA',
    lat: 37.827783,
    lng: -122.240446,
    rent: 6500.00,
    bedrooms: 4,
    bathrooms: 2.5,
    description: Faker::Lorem.paragraph,
    listing_type: 'sublet',
    date_posted: '2015-12-12'
  })

  l9 = Listing.create({
    address: Faker::Address.street_address + ', Berkeley, CA 94703, USA',
    lat: 37.855967,
    lng: -122.294102,
    rent: 3000.00,
    bedrooms: 2,
    bathrooms: 1,
    description: Faker::Lorem.paragraph,
    listing_type: 'sublet',
    date_posted: '2015-12-12'
  })

  l10 = Listing.create({
    address: Faker::Address.street_address + ', Piedmont, CA 94620, USA',
    lat: 37.848429,
    lng: -122.240249,
    rent: 10000.00,
    bedrooms: 8,
    bathrooms: 5.5,
    description: Faker::Lorem.paragraph,
    listing_type: 'sublet',
    date_posted: '2015-12-12'
  })

Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725253/10-1_isttog.jpg", listing_id: l1.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725253/10-2_g9dxvv.jpg", listing_id: l1.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725253/10-3_joo9xg.jpg", listing_id: l1.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725253/10-4_dwqssl.jpg", listing_id: l1.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725253/10-5_cnxmqj.jpg", listing_id: l1.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725254/10-6_kctsw0.jpg", listing_id: l1.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725255/10-7_r1hiux.jpg", listing_id: l1.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725254/10-8_q2oh37.jpg", listing_id: l1.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725254/10-9_hqldtj.jpg", listing_id: l1.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725255/10-10_kwsth7.jpg", listing_id: l1.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725255/10-11_vp1qxj.jpg", listing_id: l1.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725255/10-12_q237oz.jpg", listing_id: l1.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725255/10-14_kinm8r.jpg", listing_id: l1.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725256/10-15_bavtii.jpg", listing_id: l1.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725256/10-16_ux2jbu.jpg", listing_id: l1.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725257/10-21_kyzpph.jpg", listing_id: l1.id})

Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725250/9-3_ahrhh2.jpg", listing_id: l2.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725249/9-4_utuv3o.jpg", listing_id: l2.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725250/9-5_ujazqx.jpg", listing_id: l2.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725251/9-6_du0749.jpg", listing_id: l2.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725250/9-7_xgjuou.jpg", listing_id: l2.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725250/9-8_eg1izh.jpg", listing_id: l2.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725251/9-9_rnqtjv.jpg", listing_id: l2.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725251/9-12_jzlzue.jpg", listing_id: l2.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725251/9-13_uop3sq.jpg", listing_id: l2.id})

Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725239/5-1_pkx5da.jpg", listing_id: l3.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725239/5-3_jyxazp.jpg", listing_id: l3.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725239/5-4_hcpbgn.jpg", listing_id: l3.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725239/5-5_pzbe91.jpg", listing_id: l3.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725241/5-6_u4q0nn.jpg", listing_id: l3.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725240/5-7_rord4n.jpg", listing_id: l3.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725241/5-10_nj5ue8.jpg", listing_id: l3.id})

Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725248/8-2_klgrho.jpg", listing_id: l4.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725248/8-3_jnaueo.jpg", listing_id: l4.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725247/8-4_bj4dqs.jpg", listing_id: l4.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725248/8-5_sd5mlw.jpg", listing_id: l4.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725248/8-6_gdlwa8.jpg", listing_id: l4.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725248/8-7_qiyl40.jpg", listing_id: l4.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/v1450725248/8-8_gtzl7y.jpg", listing_id: l4.id})
