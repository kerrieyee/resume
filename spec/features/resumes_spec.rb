require 'spec_helper'

describe "Resumes " do 
	include Warden::Test::Helpers
	context "if the user is logged in" do
		let!(:resume){Fabricate(:resume)}
		before(:each) { login_as resume.user}
		describe "resumes#index" do
			it "displays all resumes for that user" do
				#need a controller test for this as well
				visit resumes_path
				page.should have_content(resume.name)
			end
		end

		describe "resumes#new" do
			it "displays a form to create a new resume" 
		end

	end
end