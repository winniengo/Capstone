u1 = User.create!({
    email: 'sunny@gmail.com',
    name: 'Sunny',
    password: 'password'
  })

###############################################################
c1 = Contact.create!({
    email: Faker::Internet.safe_email,
    phone: "186-285-7925",
    name: Faker::Name.name,
    verified: true,
  })

c2 = Contact.create!({
    email: Faker::Internet.safe_email,
    phone: "202-555-0182",
    name: Faker::Name.name,
    verified: true,
  })

c3 = Contact.create!({
    email: Faker::Internet.safe_email,
    phone: "803-555-0125",
    name: Faker::Name.name,
    verified: true,
  })

c4 = Contact.create!({
    email: Faker::Internet.safe_email,
    phone: "404-555-0199",
    name: Faker::Name.name,
    verified: true,
  })

c5 = Contact.create!({
    email: Faker::Internet.safe_email,
    phone: "510-316-1572",
    name: Faker::Name.name,
    verified: true,
  })

###############################################################
l1 = Listing.create!({
  address: Faker::Address.street_address + ', San Francisco, CA 94108, USA',
  lat: 37.778104,
  lng: -122.442096,
  rent: 9000,
  bedrooms: 7,
  bathrooms: 3,
  description: Faker::Lorem.paragraph,
  listing_type: "lease",
  date_posted: '2015-12-1',
  min_lease: 12,
  deposit: 15000,
  fee: true,
  parking: true,
  cats: true,
  dogs: true,
  contact_id: c2.id,
})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725253/10-1_isttog.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725253/10-2_g9dxvv.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725253/10-3_joo9xg.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725253/10-4_dwqssl.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725253/10-5_cnxmqj.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725254/10-6_kctsw0.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725255/10-7_r1hiux.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725254/10-8_q2oh37.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725254/10-9_hqldtj.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725255/10-10_kwsth7.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725255/10-11_vp1qxj.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725255/10-12_q237oz.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725255/10-13_clgaao.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725255/10-14_kinm8r.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725256/10-15_bavtii.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725256/10-16_ux2jbu.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725256/10-18_xejhby.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725256/10-19_xkyl5y.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725257/10-17_t33xfe.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725257/10-20_isw9ct.jpg", listing_id: l1.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_700,w_1000/v1450725257/10-21_kyzpph.jpg", listing_id: l1.id})

l2 = Listing.create!({
    address: Faker::Address.street_address + ', San Francisco, CA 94108, USA',
    lat: 37.734989,
    lng: -122.388824,
    rent: 5750,
    bedrooms: 3,
    bathrooms: 1,
    description: Faker::Lorem.paragraph,
    listing_type: 'lease',
    date_posted: '2015-12-10',
    min_lease: 12,
    deposit: 7000,
    cats: true,
    contact_id: c1.id
  })
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_675,w_900/v1450725249/9-2_f7pv60.jpg", listing_id: l2.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_675,w_900/v1450725250/9-3_ahrhh2.jpg", listing_id: l2.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_675,w_900/v1450725249/9-4_utuv3o.jpg", listing_id: l2.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_675,w_900/v1450725250/9-5_ujazqx.jpg", listing_id: l2.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_675,w_900/v1450725251/9-6_du0749.jpg", listing_id: l2.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_675,w_900/v1450725250/9-7_xgjuou.jpg", listing_id: l2.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_675,w_900/v1450725250/9-8_eg1izh.jpg", listing_id: l2.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_675,w_900/v1450725251/9-9_rnqtjv.jpg", listing_id: l2.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_675,w_900/v1450725251/9-12_jzlzue.jpg", listing_id: l2.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_675,w_900/v1450725251/9-13_uop3sq.jpg", listing_id: l2.id})

l3 = Listing.create!({
    address: Faker::Address.street_address + ', San Francisco, CA 94108, USA',
    lat: 37.787364,
    lng: -122.413031,
    rent: 2000,
    bedrooms: 1,
    bathrooms: 1,
    description: Faker::Lorem.paragraph,
    listing_type: 'sublet',
    date_posted: '2015-12-11',
    min_lease: 2,
    deposit: 3000,
    contact_id: c1.id
  })
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_750,w_1000/v1450725239/5-1_pkx5da.jpg", listing_id: l3.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_750,w_1000/v1450725239/5-3_jyxazp.jpg", listing_id: l3.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_750,w_1000/v1450725239/5-4_hcpbgn.jpg", listing_id: l3.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_750,w_1000/v1450725239/5-5_pzbe91.jpg", listing_id: l3.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_750,w_1000/v1450725241/5-6_u4q0nn.jpg", listing_id: l3.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_750,w_1000/v1450725240/5-7_rord4n.jpg", listing_id: l3.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_750,w_1000/v1450725240/5-8_m1dd2y.jpg", listing_id: l3.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_750,w_1000/v1450725241/5-10_nj5ue8.jpg", listing_id: l3.id})

l4 = Listing.create!({
    address: Faker::Address.street_address + ', San Francisco, CA 94108, USA',
    lat: 37.790341,
    lng: -122.409499,
    rent: 2800,
    bedrooms: 2,
    bathrooms: 1,
    description: Faker::Lorem.paragraph,
    listing_type: 'sublet',
    date_posted: '2015-12-12',
    min_lease: 12,
    deposit: 5000,
    cats: true,
    dogs: false,
    contact_id: c1.id
  })
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_650,w_1000/v1450725248/8-2_klgrho.jpg", listing_id: l4.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_650,w_1000/v1450725248/8-3_jnaueo.jpg", listing_id: l4.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_650,w_1000/v1450725247/8-4_bj4dqs.jpg", listing_id: l4.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_650,w_1000/v1450725248/8-5_sd5mlw.jpg", listing_id: l4.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_650,w_1000/v1450725248/8-6_gdlwa8.jpg", listing_id: l4.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_650,w_1000/v1450725248/8-7_qiyl40.jpg", listing_id: l4.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_650,w_1000/v1450725248/8-8_gtzl7y.jpg", listing_id: l4.id})

l5 = Listing.create!({
    address: Faker::Address.street_address + ', San Francisco, CA 94108, USA',
    lat: 37.792542,
    lng: -122.440472,
    rent: 9500,
    bedrooms: 3,
    bathrooms: 1.5,
    description: Faker::Lorem.paragraph,
    listing_type: 'lease',
    date_posted: '2015-12-12',
    min_lease: 12,
    deposit: 15000,
    fee: true,
    parking: true,
    cats: true,
    dogs: true,
    contact_id: c2.id
  })
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_900/v1450725235/3-2_xrpdrs.jpg", listing_id: l5.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_900/v1450725234/3-3_dxqm2h.jpg", listing_id: l5.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_900/v1450725234/3-4_lkoya4.jpg", listing_id: l5.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_900/v1450725236/3-5_yohhey.jpg", listing_id: l5.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_900/v1450725235/3-6_y6ocpz.jpg", listing_id: l5.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_900/v1450725235/3-7_euaotn.jpg", listing_id: l5.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_900/v1450725235/3-8_ezzc9r.jpg", listing_id: l5.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_900/v1450725235/3-9_qqwzj5.jpg", listing_id: l5.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_900/v1450725236/3-10_uz7ttk.jpg", listing_id: l5.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_900/v1450725237/3-11_kxjf9o.jpg", listing_id: l5.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_900/v1450725237/3-14_yov2zk.jpg", listing_id: l5.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_900/v1450725237/3-12_qc1xjw.jpg", listing_id: l5.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_900/v1450725237/3-13_damjtx.jpg", listing_id: l5.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_900/v1450725237/3-15_sfzdil.jpg", listing_id: l5.id})

l6 = Listing.create!({
    address: Faker::Address.street_address + ', San Francisco, CA 94108, USA',
    lat: 37.801263,
    lng: -122.433114,
    rent: 6000,
    bedrooms: 2,
    bathrooms: 1,
    description: Faker::Lorem.paragraph,
    listing_type: 'sublet',
    date_posted: '2015-12-12',
    min_lease: 12,
    deposit: 8000,
    fee: true,
    cats: false,
    dogs: false,
    contact_id: c2.id
  })
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400/v1450809320/trump-1_cafed6.jpg", listing_id: l6.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400/v1450809321/trump-2_ztaanb.jpg", listing_id: l6.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400/v1450809321/trump-3_qmbget.jpg", listing_id: l6.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400/v1450809320/trump-4_gvajgg.jpg", listing_id: l6.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400/v1450809321/trump-5_jyvinm.jpg", listing_id: l6.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400/v1450809320/trump-6_ler03q.jpg", listing_id: l6.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400/v1450809322/trump-7_ta0sxt.jpg", listing_id: l6.id})

l7 = Listing.create!({
    address: Faker::Address.street_address + ', Oakland, CA 94606, USA',
    lat: 37.801698,
    lng: -122.252343,
    rent: 3000,
    bedrooms: 2,
    bathrooms: 2,
    description: Faker::Lorem.paragraph,
    listing_type: 'lease',
    date_posted: '2015-12-12',
    min_lease: 12,
    deposit: 4000,
    parking: true,
    cats: true,
    dogs: true,
    contact_id: c3.id
  })
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_600/v1450725237/4-1_vmtsea.jpg", listing_id: l7.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_600/v1450725237/4-2_nexdfk.jpg", listing_id: l7.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_600/v1450725237/4-3_c87em9.jpg", listing_id: l7.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_600/v1450725238/4-4_gjrmgq.jpg", listing_id: l7.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_600/v1450725239/4-6_x7rje0.jpg", listing_id: l7.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_600/v1450725238/4-7_ul4zqa.jpg", listing_id: l7.id})

l8 = Listing.create!({
    address: Faker::Address.street_address + ', Piedmont, CA 94620, USA',
    lat: 37.827783,
    lng: -122.240446,
    rent: 6500,
    bedrooms: 4,
    bathrooms: 2.5,
    description: Faker::Lorem.paragraph,
    listing_type: 'sublet',
    date_posted: '2015-12-12',
    min_lease: 6,
    deposit: 9000,
    fee: true,
    parking: true,
    dogs: true,
    contact_id: c4.id
  })
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806947/garcia-1_dksypi.jpg", listing_id: l8.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806945/garcia-2_jdnlah.jpg", listing_id: l8.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806947/garcia-3_ufruvn.jpg", listing_id: l8.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806946/garcia-4_rgspn0.jpg", listing_id: l8.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806945/garcia-5_hpdmow.jpg", listing_id: l8.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806945/garcia-6_vgqhhm.jpg", listing_id: l8.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806946/garcia-8_wv7m7p.jpg", listing_id: l8.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806946/garcia-9_zp2r4n.jpg", listing_id: l8.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806946/garcia-10_kvqco4.jpg", listing_id: l8.id})

l9 = Listing.create!({
    address: Faker::Address.street_address + ', Berkeley, CA 94703, USA',
    lat: 37.855967,
    lng: -122.294102,
    rent: 8000,
    bedrooms: 3,
    bathrooms: 3,
    description: Faker::Lorem.paragraph,
    listing_type: 'sublet',
    date_posted: '2015-12-12',
    min_lease: 6,
    deposit: 10000,
    parking: true,
    dogs: true,
    contact_id: c3.id
  })
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450809963/11-1_nyqh6a.jpg", listing_id: l9.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450809966/11-15_pvkvwk.jpg", listing_id: l9.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450809964/11-10_dtkqjd.jpg", listing_id: l9.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450809966/11-11_s5dvkq.jpg", listing_id: l9.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450809964/11-12_sexjva.jpg", listing_id: l9.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450809965/11-13_f4aywx.jpg", listing_id: l9.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450809965/11-14_srqame.jpg", listing_id: l9.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450809962/11-2_mxefv8.jpg", listing_id: l9.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450809962/11-3_ol0psg.jpg", listing_id: l9.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450809962/11-4_mcufog.jpg", listing_id: l9.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450809961/11-5_bhx9nu.jpg", listing_id: l9.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450809962/11-6_afomsp.jpg", listing_id: l9.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450809964/11-7_qymd35.jpg", listing_id: l9.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450809963/11-8_nqhfjz.jpg", listing_id: l9.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450809964/11-9_ar4nym.jpg", listing_id: l9.id})

l10 = Listing.create!({
    address: Faker::Address.street_address + ', Piedmont, CA 94620, USA',
    lat: 37.848429,
    lng: -122.240249,
    rent: 10000,
    bedrooms: 8,
    bathrooms: 5.5,
    description: Faker::Lorem.paragraph,
    listing_type: 'lease',
    date_posted: '2015-12-12',
    min_lease: 6,
    deposit: 15000,
    fee: true,
    parking: true,
    cats: true,
    dogs: true,
    contact_id: c4.id
  })
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806959/kardashianwest-1_s49vwq.jpg", listing_id: l10.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806959/kardashianwest-2_uu4jiu.jpg", listing_id: l10.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806958/kardashianwest-3_jqsir8.jpg", listing_id: l10.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806958/kardashianwest-4_tt2my5.jpg", listing_id: l10.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806958/kardashianwest-5_hdprgv.jpg", listing_id: l10.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806959/kardashianwest-6_jivhcl.jpg", listing_id: l10.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806958/kardashianwest-7_bbacrl.jpg", listing_id: l10.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806959/kardashianwest-8_nufxug.jpg", listing_id: l10.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806959/kardashianwest-9_m2bn0p.jpg", listing_id: l10.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806959/kardashianwest-10_lorikt.jpg", listing_id: l10.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806959/kardashianwest-11_a5c3ab.jpg", listing_id: l10.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806960/kardashianwest-12_xcvfl4.jpg", listing_id: l10.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806960/kardashianwest-13_oqkr9u.jpg", listing_id: l10.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806960/kardashianwest-14_kut74x.jpg", listing_id: l10.id})

l11 = Listing.create!({
    address: Faker::Address.street_address + ', San Francisco, CA 94133, USA',
    lat: 37.806545,
    lng: -122.410936,
    rent: 3000,
    bedrooms: 1,
    bathrooms: 1,
    description: Faker::Lorem.paragraph,
    listing_type: 'sublet',
    date_posted: '2015-12-12',
    min_lease: 6,
    deposit: 7000,
    fee: true,
    parking: true,
    cats: true,
    dogs: false,
    contact_id: c4.id
  })
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806975/willis-1_hvteqy.jpg", listing_id: l11.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806976/willis-2_aoifzs.jpg", listing_id: l11.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_400,w_600/v1450806973/willis-3_yxhlre.jpg", listing_id: l11.id})

l12 = Listing.create({
    address: Faker::Address.street_address + ', San Francisco, CA 94114, USA',
    lat: 37.752573,
    lng: -122.435043,
    rent: 3500,
    bedrooms: 1,
    bathrooms: 1,
    description: Faker::Lorem.paragraph,
    listing_type: 'lease',
    date_posted: '2015-12-12',
    min_lease: 6,
    deposit: 6000,
    fee: true,
    parking: true,
    cats: true,
    dogs: true,
    contact_id: c5.id
  })
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_450,w_660/v1450914453/14-1_pw9w02.jpg", listing_id: l12.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_450,w_660/v1450914454/14-2_tdkezy.jpg", listing_id: l12.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_450,w_660/v1450914454/14-3_mhhr2t.jpg", listing_id: l12.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_450,w_660/v1450914455/14-4_zwup7m.jpg", listing_id: l12.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_450,w_660/v1450914454/14-5_pxp07l.jpg", listing_id: l12.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_450,w_660/v1450914454/14-6_p9bpkx.jpg", listing_id: l12.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_450,w_660/v1450914454/14-7_asphse.jpg", listing_id: l12.id})

l13 = Listing.create({
    address: Faker::Address.street_address + ', San Francisco, CA 94133, USA',
    lat: 37.788261,
    lng: -122.488838,
    rent: 7000,
    bedrooms: 3,
    bathrooms: 1,
    description: Faker::Lorem.paragraph,
    listing_type: 'lease',
    date_posted: '2015-12-12',
    min_lease: 12,
    deposit: 11000,
    fee: true,
    parking: true,
    cats: true,
    dogs: true,
    contact_id: c5.id
  })
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_375,w_550/v1450914452/13-1_pnee4q.jpg", listing_id: l13.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_375,w_550/v1450914452/13-2_rvavn7.jpg", listing_id: l13.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_375,w_550/v1450914452/13-3_a1fy8v.jpg", listing_id: l13.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_375,w_550/v1450914453/13-4_rjpdle.jpg", listing_id: l13.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_375,w_550/v1450914453/13-5_bih1bu.jpg", listing_id: l13.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_375,w_550/v1450914453/13-6_rgq3yi.jpg", listing_id: l13.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_375,w_550/v1450914453/13-7_lccptv.jpg", listing_id: l13.id})

l14 = Listing.create({
    address: Faker::Address.street_address + ', San Francisco, CA 94133, USA',
    lat: 37.778753,
    lng: -122.477067,
    rent: 6000,
    bedrooms: 2,
    bathrooms: 2,
    description: Faker::Lorem.paragraph,
    listing_type: 'lease',
    date_posted: '2015-12-12',
    min_lease: 12,
    deposit: 8000,
    fee: true,
    parking: true,
    cats: false,
    dogs: false,
    contact_id: c4.id
  })
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450914452/12-1_wjrqq8.jpg", listing_id: l14.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450914452/12-3_odbwsl.jpg", listing_id: l14.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450914452/12-7_yy5vqo.jpg", listing_id: l14.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450914452/12-6_qanpa1.jpg", listing_id: l14.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450914452/12-5_fdb35o.jpg", listing_id: l14.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450914452/12-8_obem0i.jpg", listing_id: l14.id})
Image.create({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450914452/12-9_bxcopc.jpg", listing_id: l14.id})

l15 = Listing.create!({
    address: Faker::Address.street_address + ', Orinda, CA 94563, USA',
    lat: 37.878860,
    lng: -122.179617,
    rent: 6000,
    bedrooms: 3,
    bathrooms: 3,
    description: Faker::Lorem.paragraph,
    listing_type: 'lease',
    date_posted: '2015-12-12',
    min_lease: 6,
    deposit: 12000,
    parking: true,
    dogs: true,
    contact_id: c5.id
  })
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450725231/1-2_ldaunc.jpg", listing_id: l15.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450725230/1-3_hyn40x.jpg", listing_id: l15.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450725230/1-4_xoizqj.jpg", listing_id: l15.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450725230/1-5_p6yza0.jpg", listing_id: l15.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450725230/1-6_le9aww.jpg", listing_id: l15.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450725231/1-7_lznwxi.jpg", listing_id: l15.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450725232/1-8_zfj8ox.jpg", listing_id: l15.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450725232/1-9_kh2sug.jpg", listing_id: l15.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450725232/1-10_muwmqs.jpg", listing_id: l15.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450725232/1-11_neljhe.jpg", listing_id: l15.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450725232/1-12_dlm2w7.jpg", listing_id: l15.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_480,w_640/v1450725232/1-13_vtjlu2.jpg", listing_id: l15.id})

l16 = Listing.create!({
    address: Faker::Address.street_address + ', Oakland, 94611, USA',
    lat: 37.831059,
    lng: -122.216639,
    rent: 9000,
    bedrooms: 3,
    bathrooms: 3.5,
    description: Faker::Lorem.paragraph,
    listing_type: 'lease',
    date_posted: '2015-12-12',
    min_lease: 12,
    deposit: 12000,
    parking: true,
    dogs: true,
    contact_id: c1.id
  })
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_462/v1450997162/fox-1_daljkv.jpg", listing_id: l16.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_462/v1450997163/fox-2_z4jhzs.jpg", listing_id: l16.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_462/v1450997162/fox-3_jvx3g5.jpg", listing_id: l16.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_462/v1450997162/fox-4_wakt36.jpg", listing_id: l16.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_462/v1450997163/fox-5_jlhby2.jpg", listing_id: l16.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_462/v1450997164/fox-6_oa62f6.jpg", listing_id: l16.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_462/v1450997164/fox-7_nmh9jg.jpg", listing_id: l16.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_462/v1450997163/fox-8_xg6zss.jpg", listing_id: l16.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_462/v1450997163/fox-9_moo6rr.jpg", listing_id: l16.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_462/v1450997164/fox-10_dzkkmm.jpg", listing_id: l16.id})
Image.create!({source: "http://res.cloudinary.com/dbgp4ftst/image/upload/c_scale,h_600,w_462/v1450997164/fox-11_ftxdkf.jpg", listing_id: l16.id})
