require 'rails_helper'

describe User do
  before do
    @user_attr = create(:user) 

  end

   it 'has a valid factory' do
    User.create!(@user_attr)      
   end
end

