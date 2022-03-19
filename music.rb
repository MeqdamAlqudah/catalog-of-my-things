require_relative('./item')

class MusicAlbum < Items
  def initialize(publish_date, archived, on_spotity)
    super(publish_date, archived)
    @on_spotity = on_spotity
  end

  def can_music_be_archived?()
    (can_be_archived? && @on_spotity)
  end

  def to_string
    "Music Album #{super} On spotity: #{@on_spotity}"
  end

  attr_accessor :on_spotity

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'a' => [publish_date, archived, on_spotity, genre, author]
    }.to_json(*args)
  end

  def self.json_create(object)
    new(*object['a'])
  end
end
