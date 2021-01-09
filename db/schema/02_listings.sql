
DROP TABLE IF EXISTS listings CASCADE;

CREATE TABLE listings (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  title VARCHAR(255) NOT NULL,
  price_in_cents INTEGER NOT NULL,
  is_sold BOOLEAN DEFAULT FALSE,
  description TEXT NOT NULL,
)