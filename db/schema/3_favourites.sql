-- Drop and recreate Favourites table

DROP TABLE IF EXISTS favourites CASCADE;

CREATE TABLE favourites (
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  listing_id INTEGER REFERENCES listings(id) ON DELETE CASCADE,
);
