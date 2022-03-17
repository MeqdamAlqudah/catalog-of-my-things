require_relative 'main_methods/author_main'
require_relative 'main_methods/book_main'
require_relative 'main_methods/label_main'
require_relative 'main_methods/game_main'
require_relative 'save'
require_relative 'load'

require 'json'

@default_author = Authormain.new
@default_book = Bookmain.new
@default_game = Gamemain.new
@default_label = Labelmain.new
@default_save = Save.new
@default_load = Load.new

@books = []
@labels = []
@authors = []
@games = []

class Main
  def list_all_books
    puts 'under construction'
  end

  def list_all_music_albums
    puts 'under construction'
  end

  def list_all_movies
    puts 'under construction'
  end

  def list_of_games
    puts 'under construction'
  end

  def list_all_genres
    puts 'under construction'
  end

  def list_all_labels
    puts 'under construction'
  end

  def list_all_authors
    puts 'under construction'
  end

  def list_all_sources
    puts 'under construction'
  end

  def add_a_book
    puts 'under construction'
  end

  def add_a_music_album
    puts 'under construction'
  end

  def add_a_movie
    puts 'under construction'
  end

  def add_a_game
    puts 'under construction'
  end

  def list
    "\nPlease choose one of the options :\n"\
      "1-List all books\n" \
      "2-List all music albums\n" \
      "3-List all movies\n" \
      "4-List of games\n" \
      "5-List all genres (e.g 'Comedy', 'Thriller')\n" \
      "6-List all labels (e.g. 'Gift', 'New')\n" \
      "7-List all authors (e.g. 'Stephen King')\n" \
      "8-List all sources (e.g. \'From a friend\', \'Online shop\')\n" \
      "9-Add a book \n" \
      "10-Add a music album\n" \
      "11-Add a movie\n" \
      "12-Add a game\n" \
      "13-exit\n"
  end

  def other_options(value)
    case value.to_i
    when 6
      @default_label.list_all_labels(@labels)
    when 7
      @default_author.list_all_author(@authors)
    when 8
      list_all_sources
    when 9
      @default_book.add_book(@books)
    when 10
      add_a_music_album
    else

      returned = other_second_options(value)
      return false if returned == false
    end
  end

  def other_second_options(value)
    case value.to_i
    when 11
      add_a_movie
    when 12
      @default_game.create_a_game(@games)
    when 13
      false
    else
      puts "Please enter a vlid value\n"
    end
  end

  def casses(value)
    case value.to_i
    when 1
      @default_book.list_all_books(@books)
    when 2
      list_all_music_albums
    when 3
      list_all_movies
    when 4
      @default_game.list_all_games(@games)
    when 5
      list_all_genres
    else
      returned = other_options(value)
      return false if returned == false
    end
    true
  end

  def app_loop
    @default_load.load(@authors, @games, @books, @labels)
    message = list
    flag = true
    while flag
      puts message
      value = gets.chomp
      flag = casses value
    end
    @default_save.save(@authors, @games, @books, @labels)
  end
end

Main.new.app_loop
