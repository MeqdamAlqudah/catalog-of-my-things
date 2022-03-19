require_relative '../game'

class Gamemain
  def list_all_games(games)
    var = ''
    games.each { |n| var += "#{n.to_string} \n" }
    var
  end

  def create_a_game_user(games)
    print 'Enter Publish date'
    publish = gets.chomp
    print 'Enter if archived'
    archived = gets.chomp
    print 'Enter if Multiplayer'
    multi = gets.chomp
    print 'Enter when last played'
    last_played = gets.chomp

    game = Game.new(publish, archived, multi, last_played)
    games.push(game)

    puts 'Game created succesfully'
  end

  def create_a_game(game, games)
    games.push(game)
  end
end
