require_relative '../music'
require_relative '../gener'
require_relative '../author'

class Musicmain
  def list_all_music_albums(albums)
    var = ''
    albums.each { |n| var += "#{n.to_string} \n" }
    var
  end

  def add_a_music_album(albums)
    print 'Enter Publish date(dd/mm/yy): '
    publish = gets.chomp
    print 'Enter if archived: '
    archived = gets.chomp
    print 'Enter if they are on spotity: '
    spotity = gets.chomp
    print 'Enter the genre(e.g \'Comedy\', \'Thriller\'): '
    genre = gets.chomp
    print 'Enter author(first_name last_name): '
    author = gets.chomp
    music_album = MusicAlbum.new(publish, archived,spotity)
    gener_class = Gener.new(genre)
    music_album.genre = (gener_class)
    Save.new.save_genre([gener_class])
    author = author.split
    music_album.author = (Author.new(author[0], author[1]))
    albums.push(music_album)
    puts 'Music 🎵 abum was added sucssesfully😎🎼'
  end
end
