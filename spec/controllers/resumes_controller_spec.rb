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

end
