require 'rails_helper' 

feature 'User creates ITEM' do
  scenario 'Successfully' do
    visit new_item_path
    fill_in 'Body', with:'washcar'
    click_button 'Save' 
   
    expect( page ).to have_content('Your new ITEM was saved')    
    expect( page ).to have_content('washcar')
  end  
end
       