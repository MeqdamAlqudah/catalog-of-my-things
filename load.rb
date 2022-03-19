require_relative './game'
require_relative './author'
require_relative './book'
require_relative './label'
require_relative './music'
require_relative './gener'

class Load
  def load_authors(authors)
    return unless File.zero?('./json/authors.json') == false

    file_ing = File.read('./json/authors.json')
    var = JSON.parse(file_ing)
    var.each do |n|
      new_author = Author.new(n[0], n[1])
      authors.push(new_author)
    end
  end

  def load_games(games)
    return unless File.zero?('./json/games.json') == false

    file_ing = File.read('./json/games.json')
    var = JSON.parse(file_ing)
    var.each do |n|
      new_game = Game.new(n[0], n[1], n[2], n[3])
      games.push(new_game)
    end
  end

  def load_books(books)
    return unless File.zero?('./json/books.json') == false

    file_ing = File.read('./json/books.json')
    var = JSON.parse(file_ing)
    var.each do |n|
      new_book = Book.new(n[0], n[1], n[2], n[3])
      books.push(new_book)
    end
  end

  def load_labels(labels)
    return unless File.zero?('./json/labels.json') == false

    file_ing = File.read('./json/labels.json')
    var = JSON.parse(file_ing)
    var.each do |n|
      new_label = Label.new(n[0], n[1])
      labels.push(new_label)
    end
  end

  def load_music(music)
    return unless File.zero?('./json/music.json') == false

    file_ing = File.read('./json/music.json')
    var = JSON.parse(file_ing)
    var.each do |n|
      new_music = MusicAlbum.new(n[0], n[1], n[2])
      music.push(new_music)
    end
  end

  def load_genre(genres)
    return unless File.zero?('./json/genre.json') == false

    file_ing = File.read('./json/genre.json')
    var = JSON.parse(file_ing)
    var.each do |n|
      new_genre = Gener.new(n[0])
      genres.push(new_genre)
    end
  end

  def load(authors, games, books, labels, music, genres)
    load_authors(authors)
    load_games(games)
    load_books(books)
    load_labels(labels)
    load_music(music)
    load_genre(genres)
  end
end

author = []
games = []
books = []
label = []
music = []
genres = []

var = Load.new
var.load(author, games, books, label, music, genres)