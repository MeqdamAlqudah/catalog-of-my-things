require_relative '../game'
require_relative '../gener'
require_relative '../author'

class Gamemain
  def list_all_games(games)
    var = ''
    games.each { |n| var += "#{n.to_string} \n" }
    var
  end

  def create_a_game_user(games)
    print 'Enter Publish date(dd/mm/yy): '
    publish = gets.chomp
    print 'Enter if archived: '
    archived = gets.chomp
    print 'Enter if Multiplayer: '
    multi = gets.chomp
    print 'Enter when last played: '
    last_played = gets.chomp
    print 'Enter the genre(e.g \'Comedy\', \'Thriller\'): '
    genre = gets.chomp
    print 'Enter the designer(first_name last_name): '
    author = gets.chomp
    game = Game.new(publish, archived, multi, last_played)
    gener_class = Gener.new(genre)
    game.genre = (gener_class)
    Save.new.save_genre([gener_class])
    author = author.split
    game.author = (Author.new(author[0], author[1]))
    games.push(game)

    puts 'Game created succesfully'
  end

  def create_a_game(game, games)
    games.push(game)
  end
end
