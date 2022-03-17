require_relative '../book'

class Bookmain
  # Add a book
  def add_book(books)
    publish_date = input_string()
    archived = input_string()
    publisher = input_string()
    cover_state = input_string()
    book = Book.new(publish_date, archived, publisher, cover_state)
    books.push(book)
  end

  def list_all_books(books)
    books.each { |book| puts book.to_string }
  end
end