require 'rails_helper'

describe List do
  describe "validations" do
    describe "length validation" do
      
      before(:each) do
        User.destroy_all
        @list = build(:list, name: nil)
        end
       it "does not allow items with less than 5 characters." do
       expect(@list.valid?).to be false
        end
      end
    end
  end
     