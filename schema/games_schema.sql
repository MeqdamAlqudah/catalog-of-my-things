CREATE TABLE games (
  ID SERIAL PRIMARY KEY,
  genre_id INT,
  author_id INT,
  source_id INT,
  label_id FOREIGN KEY (label_id) REFERENCES labels (id) ON DELETE SET NULL,
  publish_date DATE,
  archived BOOLEAN,
  multiplayer BOOLEAN,
  last_played_at DATE,
);

ALTER TABLE books CONSTRAINT fk_genre FOREGIN Key (genre_id) REFERENCES genre (id)
ALTER TABLE books CONSTRAINT fk_author FOREGIN Key (author_id) REFERENCES author (id)
ALTER TABLE books CONSTRAINT fk_source FOREGIN Key (source_id) REFERENCES source (id)