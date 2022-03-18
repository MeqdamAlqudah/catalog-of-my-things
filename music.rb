require_relative('./item')
class MusicAlbum < Items
  attr_accessor :on_spotity

  @music_albums = []
  def initialize(on_spotity, publish_date, archived)
    super(publish_date, archived)
    @on_spotity = on_spotity
  end

  def can_music_be_archived?()
    (can_be_archived? && @on_spotity)
  end
  def to_string
    "Publish date #{@publish_date} On spotity: #{@on_spotity} Archived: #{@archived}"
  end


  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'a' => [on_spotity, publish_date, archived]
    }.to_json(*args)
  end

  def self.json_create(object)
    new(*object['a'])
  end
end
