require_relative 'item'

class Book < Items
  def initialize(publish_date, archived, publisher, cover_state)
    super(publish_date, archived)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || @cover_state == 'bad'
  end

  def to_string
    "Game #{super} Publisher: #{@publisher} Cover state: #{@cover_state}"
  end

  attr_accessor :publisher, :cover_state

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'a' => [genre, author, source, label, publish_date, archived, publisher, cover_state]
    }.to_json(*args)
  end

  def self.json_create(object)
    new(*object['a'])
  end
end
