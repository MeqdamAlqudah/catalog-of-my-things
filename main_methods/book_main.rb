require_relative '../book'
require_relative '../gener'
require_relative '../author'
require_relative '../save'
class Bookmain
  # Add a book
  def add_book_user(books)
    print 'Enter Publish date(dd/mm/yy): '
    publish = gets.chomp
    print 'Enter if archived: '
    archived = gets.chomp
    print 'Enter Publisher(first_name last_name): '
    publisher = gets.chomp
    print 'Enter the state of the cover: '
    cover_state = gets.chomp
    print 'Enter the genre(e.g \'Comedy\', \'Thriller\'): '
    genre = gets.chomp
    book = Book.new(publish, archived, publisher, cover_state)
    gener_class = Gener.new(genre)
    book.genre = (gener_class)
    Save.new.save_genre([gener_class])
    publisher = publisher.split
    book.author = (Author.new(publisher[0], publisher[1]))
    books.push(book)

    puts 'Book created succesfully'
  end

  def add_book(book, books)
    books.push(book)
  end

  def list_all_books(books)
    var = ''
    books.each { |n| var += "#{n.to_string} \n" }
    var
  end
end
