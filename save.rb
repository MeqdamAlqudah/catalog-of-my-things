require 'json'

class Save
  def save_authors(authors)
    arr = []
    authors.each { |n| arr.push([n.first_name, n.last_name]) }
    author_json = JSON.generate(arr)
    File.write('./json/authors.json', author_json)
  end

  def save_games(games)
    arr = []
    games.each { |n| arr.push([n.publish_date, n.archived, n.multiplayer, n.last_played_at, n.designer, n.genre]) }
    games_json = JSON.generate(arr)
    File.write('./json/games.json', games_json)
  end

  def save_books(books)
    arr = []
    books.each { |n| arr.push([n.publish_date, n.archived, n.publisher, n.cover_state, n.genre]) }
    books_json = JSON.generate(arr)
    File.write('./json/books.json', books_json)
  end

  def save_label(labels)
    arr = []
    labels.each { |n| arr.push([n.title, n.color]) }
    labels_json = JSON.generate(arr)
    File.write('./json/labels.json', labels_json)
  end

  def save_music(music)
    arr = []
    music.each { |n| arr.push([n.publish_date, n.archived, n.on_spotity, n.genre, n.author]) }
    music_json = JSON.generate(arr)
    File.write('./json/music.json', music_json)
  end

  def save_genre(genres)
    arr = []
    genres.each { |n| arr.push([n.id, n.name]) }
    genre_json = JSON.generate(arr)
    File.write('./json/genre.json', genre_json)
  end

  def save(authors, games, books)
    save_authors(authors)
    save_games(games)
    save_books(books)
  end

  def save_second(labels, music, genres)
    save_label(labels)
    save_music(music)
    save_genre(genres)
  end
end
