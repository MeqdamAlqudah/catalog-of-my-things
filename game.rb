require_relative './item'

class Game < Items
  def initialize(publish_date, archived, multiplayer, last_played_at)
    super(publish_date, archived)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  attr_accessor :multiplayer, :last_played_at

  def can_be_archived?
    super && last_played?
  end

  def to_string
    "Game #{super} Multiplayer: #{@multiplayer} Last Played At: #{@last_played_at}"
  end

  def last_played?
    year = "#{@last_played_at[6]}#{@last_played_at[7]}#{@last_played_at[8]}#{@last_played_at[9]}"
    month = "#{@last_played_at[3]}#{@last_played_at[4]}"
    day = "#{@last_played_at[0]}#{@last_played_at[1]}"

    now = Date.today
    before = Date.civil(year.to_i, month.to_i, day.to_i)
    difference_in_days = (now - before).to_i

    var = (difference_in_days / 365.25).to_i

    var > 2
  end
end
