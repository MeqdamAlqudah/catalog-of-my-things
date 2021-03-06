require_relative 'main_methods/author_main'
require_relative 'main_methods/book_main'
require_relative 'main_methods/label_main'
require_relative 'main_methods/game_main'
require_relative 'main_methods/main_genre'
require_relative 'main_methods/music_main'
require_relative 'save'
require_relative 'load'

require 'json'

@default_author = Authormain.new
@default_book = Bookmain.new
@default_game = Gamemain.new
@default_label = Labelmain.new
@default_music = Musicmain.new
@default_genre = Maingener.new
@default_save = Save.new
@default_load = Load.new

@books = []
@labels = []
@authors = []
@games = []
@music = []
@genres = []

def list
  "\nPlease choose one of the options :\n"\
    "1- List all books\n" \
    "2- List all music albums\n" \
    "3- List all movies\n" \
    "4- List of games\n" \
    "5- List all genres (e.g 'Comedy', 'Thriller')\n" \
    "6- List all labels (e.g. 'Gift', 'New')\n" \
    "7- List all authors (e.g. 'Stephen King')\n" \
    "8- List all sources (e.g. \'From a friend\', \'Online shop\')\n" \
    "9- Add a book \n" \
    "10- Add a music album\n" \
    "11- Add a movie\n" \
    "12- Add a game\n" \
    "13- exit\n"
end

def other_options(value)
  case value.to_i
  when 6
    puts @default_label.list_all_labels(@labels)
  when 7
    puts @default_author.list_all_author(@authors)
  when 8
    puts 'Method not in requirements'
  when 9
    @default_book.add_book_user(@books, @labels, @authors, @genres)
  when 10
    @default_music.add_a_music_album(@music, @labels, @authors, @genres)
  else

    returned = other_second_options(value)
    return false if returned == false
  end
end

def other_second_options(value)
  case value.to_i
  when 11
    puts 'Method not in requirements'
  when 12
    @default_game.create_a_game_user(@games, @labels, @authors, @genres)
  when 13
    false
  else
    puts "Please enter a valid value\n"
  end
end

def casses(value)
  case value.to_i
  when 1
    puts @default_book.list_all_books(@books)
  when 2
    puts @default_music.list_all_music_albums(@music)
  when 3
    puts 'Method is not in requirments'
  when 4
    puts @default_game.list_all_games(@games)
  when 5
    puts @default_genre.list_all_genres(@genres)
  else
    returned = other_options(value)
    return false if returned == false
  end
  true
end

def app_loop
  @default_load.load(@authors, @games, @books)
  @default_load.load_second(@labels, @music, @genres)
  puts 'Welcome to Catalog of my things App!'
  message = list
  flag = true
  while flag
    puts message
    value = gets.chomp
    flag = casses value
  end
  @default_save.save(@authors, @games, @books)
  @default_save.save_second(@labels, @music, @genres)
end

app_loop
