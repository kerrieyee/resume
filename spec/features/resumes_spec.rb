require 'spec_helper'

describe "Resumes ", :js => true do 
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

			it "should have a button that says create resume" do
				visit resumes_path
				page.should have_button("Create New Resume")
			end 
		end

		describe "resumes#create" do
			it "displays a form to create a new resume" do
				visit resumes_path
				fill_in 'resume_name', :with => "Application for DBC"
				fill_in 'resume_description', :with => "Applying for a student position with DBC"
				click_button "Create New Resume"
				Capybara.default_wait_time = 5
				#Changed default wait time to wait for the AJAX to load
				page.should have_content("Application for DBC")
			end
		end

		describe "resumes#edit" do
			it "displays a form to update a new resume" do
				visit resumes_path
				within(:css, "tr##{resume.id}") do
					click_link 'Edit' 
				end
				page.should have_content("Edit Resume: #{resume.name}")
			end

			it "updates a resume" do
				visit edit_resume_path(resume.id)
				fill_in 'resume_name', :with => "Oranges"
				click_button 'Update Resume'
				page.should have_content("Resume was successfully updated.")
			end

			it "renders the edit page if the updated info is invalid" do
				visit edit_resume_path(resume.id)
				fill_in 'resume_name', :with => ""
				click_button 'Update Resume'
				page.should_not have_content("Resume was successfully updated.")
			end
		end
	end
end