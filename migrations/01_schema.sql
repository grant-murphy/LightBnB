DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS properties CASCADE;
DROP TABLE IF EXISTS reservations CASCADE;
DROP TABLE IF EXISTS property_reviews CASCADE;


CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT,
  password TEXT
);

CREATE TABLE properties (
  id SERIAL PRIMARY KEY NOT NULL,
  guest_id INTEGER NOT NULL REFERENCES users(id) on DELETE CASCADE,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  thumbnail_photo_url TEXT NOT NULL,
  cover_photo_url TEXT NOT NULL,
  cost_per_night INTEGER NOT NULL,
  parking_space INTEGER NOT NULL,
  number_of_bathrooms INTEGER NOT NULL,
  number_of_bedrooms INTEGER NOT NULL,
  country TEXT NOT NULL,
  street TEXT NOT NULL,
  city TEXT NOT NULL,
  provence TEXT NOT NULL,
  post_code TEXT NOT NULL,
  active BOOLEAN NOT NULL
);

CREATE TABLE reservations (
  id SERIAL PRIMARY KEY NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  property_id INTEGER NOT NULL REFERENCES properties(id) on DELETE CASCADE,
  guest_id INTEGER NOT NULL REFERENCES users(id) on DELETE CASCADE
);

CREATE TABLE property_reviews (
  id SERIAL PRIMARY KEY NOT NULL,
  guest_id INTEGER NOT NULL REFERENCES users(id) on DELETE CASCADE,
  reservation_id INTEGER NOT NULL REFERENCES reservations(id) on DELETE CASCADE,
  property_id INTEGER NOT NULL REFERENCES properties(id) on DELETE CASCADE,
  rating INTEGER NOT NULL,
  message TEXT NOT NULL
);