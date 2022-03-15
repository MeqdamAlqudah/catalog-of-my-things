require_relative './game'
require_relative './author'

class Load
  def load_authors(authors)
    return unless File.zero?('./authors.json') == false

    file_ing = File.read('./authors.json')
    var = JSON.parse(file_ing)
    var.each do |n|
      new_author = Author.new(n[0], n[1])
      authors.push(new_author)
    end
  end

  def load_games(games)
    return unless File.zero?('./games.json') == false

    file_ing = File.read('./games.json')
    var = JSON.parse(file_ing)
    var.each do |n|
      new_game = Game.new(n[0], n[1], n[2], n[3])
      games.push(new_game)
    end
  end
end
