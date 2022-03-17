require_relative '../book'

class Bookmain
  # Add a book
  def add_book_user(books)
    puts 'Enter Publish date'
    publish = gets.chomp
    puts 'Enter if archived'
    archived = gets.chomp
    puts 'Enter Publisher'
    publisher = gets.chomp
    puts 'Enter the state of the cover'
    cover_state = gets.chomp

    book = Book.new(publish, archived, publisher, cover_state)
    books.push(book)

    puts 'Game created succesfully'
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
