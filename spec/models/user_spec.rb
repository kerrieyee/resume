require 'spec_helper'

describe User do
	subject { Fabricate(:user) }
  it { should validate_presence_of :name}
  it { should have_many :resumes}
end
