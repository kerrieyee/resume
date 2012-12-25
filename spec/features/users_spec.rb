require 'spec_helper'

describe "Users", :js => true do
  include Warden::Test::Helpers
  let!(:user){Fabricate(:user)}
  let!(:user2){Fabricate(:user)}
  context "when user is not logged in" do
  	describe "users#index" do 
  		it "should redirect to the login page if trying to access the resumes page" do
  			visit resumes_path
  			page.should have_content "You need to sign in or sign up before continuing."
  		end

  		it "should not have access to other people's resumes" do
  			visit users_path(user2)
  			page.should have_content "You need to sign in or sign up before continuing."
  		end
  	end
  end

  # context "when user is logged in" do
  # 	before(:each) do
  # 		login_as user, :scope => user
  # 	end
  # end

end