require_relative '../book'
require_relative '../gener'
require_relative '../author'
require_relative '../save'
class Bookmain
  # Add a book
  def add_book_user(books, labels, authors, genres)
    print 'Enter Publish date(dd/mm/yyyy): '
    publish = gets.chomp
    print 'Enter if archived (true/false): '
    archived = gets.chomp
    print 'Enter Publisher: '
    publisher = gets.chomp
    print 'Enter the state of the cover (good/bad): '
    cover_state = gets.chomp
    print 'Enter the genre(e.g \'Comedy\', \'Thriller\'): '
    genre = gets.chomp
    print 'Enter Author(first_name last_name): '
    author = gets.chomp
    print 'Enter Label(e.g. \'Title\' \'Color\'): '
    label = gets.chomp


    #Object declarations 
    book = Book.new(publish, archived, publisher, cover_state)
    author = author.split(' ')
    author_class = Author.new(author[0], author[1])
    genre_class = Gener.new(genre)
    label = label.split(' ')
    label_class = Label.new(label[0], label[1])

    
    book.genre = (genre_class)
    book.author = (author_class)
    book.label = (label_class)


    genres.push(genre_class)
    labels.push(label_class)
    authors.push(author_class)
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
