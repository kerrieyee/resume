require 'spec_helper'

describe Resume do
  subject {Fabricate(:resume)}
  it {should validate_presence_of :name}
  it {should validate_presence_of :user}
  it {should belong_to :user}
end
