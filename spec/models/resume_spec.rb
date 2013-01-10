require 'spec_helper'

describe Resume do
  subject {Fabricate(:resume)}
  it {should validate_presence_of :name}
  it {should validate_presence_of :user}
  it {should belong_to :user}
  it {should have_and_belong_to_many :job_descriptions}
end
