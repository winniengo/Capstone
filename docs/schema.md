# DB Schema

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
email           | string    | not null, indexed, unique
name            | string    | not null
password_digest | string    | not null
session_token   | string    | not null, indexed, unique


## listings
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
address         | string    | not null,
lat             | float     | not null
lng             | float     | not null
placeId         | string    | not null
rent            | float     | not null
bedrooms        | integer   | not null
bathrooms       | float     | not null
description     | string    | not null
listing_type    | string    | not null
date_posted     | date      | not null, indexed

## images
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
source          | string    | not null,
listing_id      | integer   | not null, foreign key (references listings), indexed

<!-- ## saved_listings
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
user_id         | integer   | not null, foreign key (references users), indexed
listing_id      | integer   | not null, foreign key (references listings), indexed

## saved_searches
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
user_id         | integer   | not null, foreign key (references users), indexed
search_id      | integer   | not null, foreign key (references searches), indexed


## searches
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
lng_min         | float     | not null
lng_max         | float     | not null
lat_min         | float     | not null
lat_max         | float     | not null
rent_min        | integer   | not null
rent_max        | integer   | not null
bedrooms_min    | integer   | not null
bedrooms_max    | integer   | not null
bathrooms_min   | integer   | not null
bathrooms_max   | integer   | not null
type            | string    | not null
bedroom_rent    | integer   |
listing_age_max | integer   |
requirements_id | integer   | not null, foreign key (references requirements), indexed
sources_id      | integer   | not null, foreign key (references sources), indexed

## requirements
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
pics            | boolean   | not null
phone           | boolean   | not null
address         | boolean   | not null
cats            | boolean   | not null
dogs            | boolean   | not null
no-fee          | boolean   | not null


## sources
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
pad_lister      | boolean   | not null
apartment_search | boolean   | not null
air_bnb          | boolean   | not null
for_rent        | boolean   | not null
others          | boolean   | not null -->
