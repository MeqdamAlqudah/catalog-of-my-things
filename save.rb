require 'json'

class Save 
  def save_authors(authors)
    arr = []
    authors.each { |n| arr.push([n.first_name, n.last_name]) }
    author_json = JSON.generate(arr)
    File.write('./authors.json', author_json)
  end

  def save_games(games)
    arr = []
    games.each { |n| arr.push([n.publish_date, n.archived, n.multiplayer, n.last_played_at]) }
    games_json = JSON.generate(arr)
    File.write('./games.json', games_json)
  end
end