require_relative '../game'

class Gamemain
  def list_all_games(games)
    games.each { |n| puts n.to_string }
  end

  def create_a_game_user(games)
    puts 'Enter Publish date'
    publish = gets.chomp
    puts 'Enter if archived'
    archived = gets.chomp
    puts 'Enter if Multiplayer'
    multi = gets.chomp
    puts 'Enter when last played'
    last_played = gets.chomp

    game = Game.new(publish, archived, multi, last_played)
    games.push(game)

    puts 'Game created succesfully'
  end

  def create_a_game(game, games)
    games.push(game)
  end
end
