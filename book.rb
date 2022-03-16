class Book < Item
  def initialize(publish_date, archived, publisher, cover_state)
    super(publish_date, archived)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    return if @cover_state == "bad"
    super.can_be_archived?
  end

  def to_string
    "Game #{super} Publisher: #{@publisher} Cover state: #{@cover_state}"
  end

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