CREATE musicAlbum(
    ID SERIAL PRIMARY KEY,
  genre_id INT,
  author_id INT,
  source_id INT,
  label_id FOREIGN KEY (label_id) REFERENCES labels (id) ON DELETE SET NULL,
  publish_date DATE,
  archived BOOLEAN,
  on_spotity BOOLEAN,
);

ALTER TABLE musicAlbum CONSTRAINT fk_genre FOREGIN Key (genre_id) REFERENCES genre (id)
ALTER TABLE musicAlbum CONSTRAINT fk_author FOREGIN Key (author_id) REFERENCES author (id)
ALTER TABLE musicAlbum CONSTRAINT fk_source FOREGIN Key (source_id) REFERENCES source (id)

