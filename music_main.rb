require_relative './music'

class Musicmain
  def list_all_music_albums(albums)
    albums.each { |n| puts n.to_string }
  end

  def add_a_music_album(albums)
    print 'Enter Publish date: '
    publish = gets.chomp
    print 'Enter if archived: '
    archived = gets.chomp
    print 'Enter if they are on spotity: '
    spotity = gets.chomp
    music_album = MusicAlbum.new(spotity, publish, archived)
    albums.push(music_album)
    puts 'Music 🎵 abum was added sucssesfully😎🎼'
  end
end
