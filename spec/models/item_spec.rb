require 'rails_helper'

describe Item do 
  describe "scopes" do

  before do 
    @unfinished_item = Item.create    
    @finished_item = Item.create(done: true)
  end

  describe "#finished_item" do
    it "returns true if item is completed" do
      expect(Item.done).to eq( [@finished_item] )
    end
  end
 
  describe "#unfinished_item" do
    it "returns false is item is not completed" do
      expect(Item.done).to eq( [@unfinished_item] )
    end
   end

  describe "validations" do
    describe "length validation" do
      
      it "only allows items with 5 or more characters." do
        i = Item.body(length: 4)
        expect(i.valid?).to eq(false)

        i = Item.body(length: 6)
        expect(i.valid?).to eq(true)
    end
   end
  end
 end 
end









