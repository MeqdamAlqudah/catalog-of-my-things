require 'spec_helper'

describe Book do
  context 'When testing the Book class' do
    publish_date = '02/02/2020'
    archived = false
    publisher = 'Publishbook'
    cover_state = 'bad'
    book = Book.new(publish_date, archived, publisher, cover_state)
    it 'the method factorial should return the factorial of given integer 5 to be 120' do
      expect(book.genre).to eq nil
      expect(book.label).to eq nil
      expect(book.can_be_archived?).to eq true
    end
  end
end

describe 'Testing the book related main methods' do
  before :each do
    @book = Book.new('02/02/2020', false, 'Publishbook', 'bad')
    new_genre = Gener.new('comedy')
    new_author = Author.new('first_name', 'last_name')
    new_label = Label.new('title', 'color')

    @book.genre = (new_genre)
    @book.author = (new_author)
    @book.label = (new_label)

    @bookmain = Bookmain.new
    @books = []
  end

  it 'add and list books' do
    @bookmain.add_book(@book, @books)

    expect(@books.length).to eq 1
    @books[0].id = 232
    expect(@bookmain.list_all_books(@books)).to eq 'Book ID: 232 Published Date: 02/02/2020 '\
                                                   'Archived: false '\
                                                   "\n"\
                                                   'Genre: comedy Author: first_name last_name'\
                                                   "\n"\
                                                   'Label: title color '\
                                                   'Publisher: Publishbook Cover state: bad '\
                                                   "\n"
  end
end
