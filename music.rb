require_relative('./item')
class MusicAlbum < Items
  attr_accessor :on_spotity

  @music_albums = []
  def initialize(on_spotity, publish_date, archived)
    super(publish_date, archived)
    @on_spotity = on_spotity
  end

  def can_be_archived?()
    (can_be_archived? && @on_spotity)
  end
end
