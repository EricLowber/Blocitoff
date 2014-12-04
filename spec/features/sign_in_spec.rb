require 'rails_helper' 

describe "Sign in flow" do
  before(:each) do
    User.destroy_all
   end
  
  describe "successful" do
    it "redirects to the welcome page" do
      user = authenticated_user
      visit root_path
    end
  end
end