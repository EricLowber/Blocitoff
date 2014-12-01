  require 'rails_helper'

  describe User do 
    before(:each) do
     User.destroy_all
     @user = build(:user)
      end

  it "has a valid factory" do
   expect(@user.valid?).to eq(true)
   end 
end
