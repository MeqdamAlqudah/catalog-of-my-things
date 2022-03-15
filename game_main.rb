require_relative './game.rb'

class Gamemain
  def list_all_games(games)
    games.each { |n| puts n.to_string }
  end
  publish_date, archived, multiplayer, last_played_at
  def create_a_game(games)
    puts "Enter Publish date"
    publish = gets.chomp
    puts "Enter if archived"
    archived = gets.chomp
    puts "Enter if Multiplayer"
    multi = gets.chomp
    puts "Enter when last played"
    last_played = gets.chomp

    game = Game.new(publish, archived, multi, last_played)
    games.push(game)

    puts "Game created succesfully"
  end
end