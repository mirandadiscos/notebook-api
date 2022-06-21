require "application_system_test_case"

class DiscussionsTest < ApplicationSystemTestCase
   test "visiting discussion page without login" do
     visit root_path

     click_on "Discussions"
     assert_text "You need to sign in or sign up before continuing."
     puts "#{'=='*10}\nLog:#{self.name}\nTEST PASSING"
   end


   test "creating a login" do
     visit new_user_registration_path

     assert_selector "h2", text: "Sign up"

     fill_in 'Email', with: 'vito@guedes.com'
     fill_in 'Username', with: 'vitoto'
     fill_in 'Password', with: '123123'
     fill_in 'Password confirmation', with: '123123'

     click_button 'Sign up'

     assert_selector "h1", text: "Main#index"
   end
end
