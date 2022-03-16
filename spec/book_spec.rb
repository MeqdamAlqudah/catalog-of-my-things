require './book'
require './label'

describe Book do
  context 'When testing the Book class' do
    publish_date = '2020/02/02'
    archived = false
    publisher = 'Publishbook'
    cover_state = 'bad'
    book = Book.new(publish_date, archived, publisher, cover_state)
    it 'the method factorial should return the factorial of given integer 5 to be 120' do
      expect(book.genre).to eq 'Comedy'
      expect(book.label).to eq label
      expect(label.items[0]) to eq book
      expect(book.can_be_archived?) to eq false
    end
  end
end