require_relative '../music'
require_relative '../gener'
require_relative '../author'

class Musicmain
  def list_all_music_albums(albums)
    var = ''
    albums.each { |n| var += "#{n.to_string} \n" }
    var
  end

  def add_a_music_album(albums, labels, authors, genres)
    print 'Enter Publish date(dd/mm/yyyy): '
    publish = gets.chomp
    print 'Enter if archived: (true/false) '
    archived = gets.chomp
    print 'Enter if they are on spotity: (true/false) '
    spotity = gets.chomp
    print 'Enter the genre(e.g \'Comedy\', \'Thriller\'): '
    genre = gets.chomp
    print 'Enter Author(first_name last_name): '
    author = gets.chomp
    print 'Enter Label(e.g. \'Title\' \'Color\'): '
    label = gets.chomp


    music_album = MusicAlbum.new(publish, archived,spotity)
    author = author.split(' ')
    author_class = Author.new(author[0], author[1])
    genre_class = Gener.new(genre)
    label = label.split(' ')
    label_class = Label.new(label[0], label[1])


    music_album.genre = (genre_class)
    music_album.author = (author_class)
    music_album.label = (label_class)

    genres.push(genre_class)
    labels.push(label_class)
    authors.push(author_class)
    albums.push(music_album)

    puts 'Music 🎵 abum was added sucssesfully😎🎼'
  end
end
