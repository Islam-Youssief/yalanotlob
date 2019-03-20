require 'rails_helper'

RSpec.describe "Welcomes", type: :request do
  describe "GET /welcomes" do
    it "email fakeuser when requesting password reset" do
    fakeuser = FactoryBot.create(:authorize_user)
    puts fakeuser.email
  	
    visit new_user_session_path
  	
    click_link "Forgot your password?"
  	
    fill_in "Email", :with => fakeuser.email
  	click_button "reset password"
   	expect(page).to have_content("email with instructions")
    
    end
  end

end
