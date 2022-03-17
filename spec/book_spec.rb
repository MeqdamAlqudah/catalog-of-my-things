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

describe "Testing the book related main methods" do 
  before :each do
    @book = Book.new('02/02/2020', false, 'Publishbook', 'bad')
    @bookmain = Bookmain.new
    @books = []
  end

  it 'add and list books' do
    @bookmain.add_book(@book, @books)

    expect(@books.length).to eq 1
    expect(@bookmain.list_all_books(@books)).to eq "Book ID: #{@books[0].id} Published Date: #{@books[0].publish_date} Archived: #{@books[0].archived} Publisher: #{@books[0].publisher} Cover state: #{@books[0].cover_state}"
  end
end
