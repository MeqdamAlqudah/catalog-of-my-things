require './spec_helper'

describe Label do
  context 'When testing the Label class' do
    label = Label.new('title', 'color')
    item = Item.new('publish_date', 'archived')
    label.add_item(item)
    it 'the method factorial should return the factorial of given integer 5 to be 120' do
      expect(label.title).to eq 'title'
      expect(label.color).to eq 'color'
      expect(label.items[0]) to eq item
    end
  end
end