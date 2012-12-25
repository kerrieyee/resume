require 'spec_helper'

describe Resume do
  subject {Fabricate(:resume)}

  it {should belong_to :user}
end
