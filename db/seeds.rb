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

l1 = Listing.create!({address: "1907 Golden Gate Ave, San Francisco, CA 94115, USA",
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

l2 = Listing.create({
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

l3 = Listing.create({
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

l4 = Listing.create({
    address: '734 Bush St, San Francisco, CA 94108, USA',
    lat: 37.790341,
    placeId: 'ChIJBQiuNoyAhYARiXkkAgbDbHo',
    lng: -122.409499,
    rent: 3000.00,
    bedrooms: 2,
    bathrooms: 1,
    description: "anna's house",
    listing_type: 'lease',
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
