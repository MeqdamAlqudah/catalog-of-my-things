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