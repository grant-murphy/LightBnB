INSERT INTO users (name, password)
VALUES 
  ('Grant Murphy', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'), 
  ('Peter Murphy', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Lauren Murphy', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_space, number_of_bathrooms, number_of_bedrooms, country, street_number, street_name, city, provence, postal_code, active)
VALUES 
  (1, 'Residence 1', 'Description', 'Photo1', 'Photo2', 100, 1, 2, 2, 'Canada', 10, 'FakeStreet1', 'Toronto', 'Ontario', 'L8T1X3', true),
  (2, 'Residence 2', 'Description', 'Photo1', 'Photo2', 200, 2, 3, 3, 'Canada', 20, 'FakeStreet2', 'Toronto', 'Ontario', 'L8T1X2', true),
  (3, 'Residence 3', 'Description', 'Photo1', 'Photo2', 300, 3, 4, 4, 'Canada', 30, 'FakeStreet3', 'Toronto', 'Ontario', 'L8T1X1', false);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES
  ('2019-08-11', '2019-08-20', 1, 1),
  ('2019-09-11', '2019-09-01', 2, 2);

INSERT INTO property_reviews (guest_id, reservation_id, property_id, rating, message)
VALUES
  (1, 2, 1, 5, 'message'),
  (3, 1, 2, 3, 'message');