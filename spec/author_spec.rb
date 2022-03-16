require 'spec_helper'

describe 'Testing the Author class' do
  before :each do
    @author = Author.new('First Name', 'Last Name')
    @item = Items.new('publish_date', 'archived')
  end

  it 'with the above parameter a Author object should be created' do
    @author.should be_an_instance_of Author
  end

  it 'return correct first name' do
    @author.first_name.should eql 'First Name'
  end

  it 'add an item to items' do
    @author.last_name.should eql 'Last Name'
  end

  it 'add an item to items' do
    @author.add_items(@item)
    expect(@author.items[0]).to eq @item
  end
end