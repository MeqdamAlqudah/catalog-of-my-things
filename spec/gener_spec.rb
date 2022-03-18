require_relative "../item.rb"
require_relative "../gener.rb"
describe "Test gener class" do
    it "Should add item to itmes array"  do
        gener = Gener.new("Comedy")
        item  = Items.new("01/07/1999",true)
        gener.add_item(item)
        expect(gener.items.length).to eq(1)
    end
    
end
