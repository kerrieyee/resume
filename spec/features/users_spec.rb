require 'spec_helper'

describe "Users", :js => true do
  include Warden::Test::Helpers

  context "when user is not logged in" do
  	let!(:user){Fabricate(:user)}
  	describe "users#index" do 
  		it "should redirect to the login page if trying to access the resumes page" do
  			visit resumes_path
  			page.should have_content "You need to sign in or sign up before continuing."
  		end

  		it "should not have access to other people's resumes" do
  			visit users_path(user)
  			page.should have_content "You need to sign in or sign up before continuing."
  		end
  	end
  end
end