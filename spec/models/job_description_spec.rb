require 'spec_helper'

describe JobDescription do
	subject {Fabricate(:job_description)}
	it{ should validate_presence_of :company}
	it{ should validate_presence_of :position}
	it{ should validate_presence_of :start_date}
	it { should have_and_belong_to_many(:resumes)}	
end
