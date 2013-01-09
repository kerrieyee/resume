require 'spec_helper'

describe ResumesController do
  let!(:resume){Fabricate(:resume)}
  before(:each) { sign_in resume.user }
  describe "#index" do
    it "returns all resumes" do
      get(:index, :user_id => resume.user.id) 
      assigns(:resumes).should eq [resume]
    end
  end

  describe "#create" do
  	it "creates a new resume and increases the resume count by 1" do
  		expect{
  		post(:create, :user_id => resume.user.id, 
  									:resume => { 	:name => "Resume", 
  																:description => "Position", 
  																:user_id => resume.user.id})
  		}.to change(Resume, :count).by(1)
  	end
  end

end
