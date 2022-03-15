@books = []
@labels = []

# List all books
def list_all_books
  @books.each { |book| puts "Title: #{book.author}, Author: #{book.author}" }
end

# List all labels (e.g. 'Gift', 'New')
def list_all_labels
  @labels.each { |label| puts "Title: #{label.title}, Color: #{label.color}" }
end

# Add a book
def add_book
  genre = input_string()
  author = input_string()
  source = input_string()
  label = input_string()
  publish_date = input_string()
  archived = input_string()
  publisher = input_string()
  cover_state = input_string()
  book = Book.new(genre, author, source, label, publish_date, archived, publisher, cover_state)
  @books << new_book
end