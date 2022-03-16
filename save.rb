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
    games.each { |n| arr.push([n.publish_date, n.archived, n.multiplayer, n.last_played_at]) }
    games_json = JSON.generate(arr)
    File.write('./json/games.json', games_json)
  end

  def save_books(books)
    arr = []
    books.each { |n| arr.push([n.publish_date, n.archived, n.publisher, n.cover_state]) }
    books_json = JSON.generate(arr)
    File.write('./json/books.json', books_json) 
  end

  def save_label(labels)
    arr = []
    labels.each { |n| arr.push([n.title, n.color]) }
    labels_json = JSON.generate(arr)
    File.write('./json/labels.json')
  end
end
