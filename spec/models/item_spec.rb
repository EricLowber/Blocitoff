require 'rails_helper'

describe Item do 
  describe "scopes" do

  before(:each) do 
    User.destroy_all
    @unfinished_item = create(:item)  
    @finished_item = create(:item, done: true)
  end

  describe "#unfinished_and_recent" do
    it "returns false if item is not completed and is less than 7 days old" do
      expect(@unfinished_item.done).to be false
    end
   end

  before(:each) do
    User.destroy_all
    @item = build(:item, body: nil)
  end

  describe "validations" do
    describe "length validation" do
       it "does not allow items with less than 5 characters." do
       expect(@item.valid?).to be false
    end
   end
  end
 end
end
