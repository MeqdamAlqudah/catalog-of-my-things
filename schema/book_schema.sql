CREATE TABLE books (
  id INT PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY,
  genre_id INT,
  author_id INT,
  source_id INT,
  label_id FOREIGN KEY (label_id) REFERENCES labels (id) ON DELETE SET NULL,
  publish_date DATE,
  archived BOOLEAN,
  publisher VARCHAR(200),
  cover_state VARCHAR(200),
);

ALTER TABLE books CONSTRAINT fk_genre FOREGIN Key (genre_id) REFERENCES genre (id)
ALTER TABLE books CONSTRAINT fk_author FOREGIN Key (author_id) REFERENCES author (id)
ALTER TABLE books CONSTRAINT fk_source FOREGIN Key (source_id) REFERENCES source (id)