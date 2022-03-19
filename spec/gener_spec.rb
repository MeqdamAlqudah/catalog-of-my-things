require 'spec_helper'

describe 'Test gener class' do
  it 'Should add item to itmes array' do
    gener = Gener.new('Comedy')
    item = Items.new('01/07/1999', true)
    gener.add_item(item)
    expect(gener.items.length).to eq(1)
  end

  it 'list all genres test' do
    geners = []
    gener = Gener.new('Thriller')
    geners.push(gener)
    main = Maingener.new
    expect(main.list_all_genres(geners)).to eq "Thriller \n"
  end
end
