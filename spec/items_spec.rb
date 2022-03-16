require 'spec_helper'

describe 'Testing the Items class' do
  before :each do
    @items = Items.new('12-05-2008', false)
  end

  it 'with the above parameter a Items object should be created' do
    @items.should be_an_instance_of Items
  end

  it 'return correct published date' do
    @items.publish_date.should eql '12-05-2008'
  end

  it 'return coorect archived' do
    @items.archived.should eql false
  end

  it 'can be archived method should return true' do
    expect(@items.can_be_archived?).to eq true
  end

  it 'Move to archived method should return true' do
    @items.move_to_archive
    expect(@items.archived).to eq true
  end
end