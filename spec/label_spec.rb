require 'spec_helper'

describe Label do
  context 'When testing the Label class' do
    label = Label.new('title', 'color')
    item = Items.new('publish_date', 'archived')
    label.add_item(item)
    it 'the method factorial should return the factorial of given integer 5 to be 120' do
      expect(label.title).to eq 'title'
      expect(label.color).to eq 'color'
      expect(label.items[0]).to eq item
    end
  end
end

describe "Testing the label related main methods" do 
  before :each do
    @label = Label.new('title', 'color')
    @labelmain = Labelmain.new
    @labels = []
  end

  it 'list all labels' do
    @labels.push(@label)

    expect(@labels.length).to eq 1
    expect(@labelmain.list_all_labels(@labels)).to eq "Title: #{@labels[0].title} Color: #{@labels[0].color}"
  end
end
