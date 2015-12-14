# DB Schema

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique

## saved_listings
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
user_id         | integer   | not null, foreign key (references users), indexed
listing_id      | integer   | not null, foreign key (references listings), indexed

## listings
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
lng             | float     | not null
lat             | float     | not null
source          | string    | not null
link            | string    | not null
rent            | float     | not null
bedrooms        | integer   | not null
bathrooms       | integer   | not null
type            | string    | not null
date_posted     | datetime  | not null, indexed

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
aparment_search | boolean   | not null
airbnb          | boolean   | not null
for_rent        | boolean   | not null
others          | boolean   | not null
