require_relative '../game'
require_relative '../gener'
require_relative '../author'

class Gamemain
  def list_all_games(games)
    var = ''
    games.each { |n| var += "#{n.to_string} \n" }
    var
  end

  def user_inputs
    print 'Enter Publish date(dd/mm/yyyy): '
    publish = gets.chomp
    print 'Enter if archived (true/false): '
    archived = gets.chomp
    print 'Enter if Multiplayer (true/false): '
    multi = gets.chomp
    print 'Enter when last played(dd/mm/yyyy): '
    last_played = gets.chomp
    print 'Enter the genre (e.g \'Comedy\', \'Thriller\'): '
    genre = gets.chomp
    print 'Enter the author (first_name, last_name): '
    author = gets.chomp
    print 'Enter Label(e.g. \'Title\' \'Color\'): '
    label = gets.chomp

    [publish, archived, multi, last_played, genre, author, label]
  end

  def create_a_game_user(games, labels, authors, genres)
    publish, archived, multi, last_played, genre, author, label = user_inputs

    game = Game.new(publish, archived, multi, last_played)
    author = author.split
    author_class = Author.new(author[0], author[1])
    genre_class = Gener.new(genre)
    label = label.split
    label_class = Label.new(label[0], label[1])

    game.genre = (genre_class)
    game.author = (author_class)
    game.label = (label_class)

    genres.push(genre_class)
    labels.push(label_class)
    authors.push(author_class)
    games.push(game)

    puts 'Game created succesfully'
  end

  def create_a_game(game, games)
    games.push(game)
  end
end
