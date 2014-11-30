require 'rails_helper'

describe Item do 
  # describe "scopes" do

  # before(:each) do 
  #   @unfinished_item = create(:item)  
  #   @finished_item = create(:item, done: true)
  # end

  # describe "#finished_item" do
  #   it "returns true if item is completed" do
  #     expect(Item.finished.first).to eq(@finished_item)
  #   end
  # end
 
  # describe "#unfinished_item" do
  #   it "returns false is item is not completed" do
  #     expect(Item.unfinished.first).to eq(@unfinished_item)
  #   end
  #  end

  describe "validations" do
    describe "length validation" do

       it "does not allow items with less than 5 characters." do
       expect build(:item, body: nil).should_not be_valid
    end
   end
  end
 end
# end
