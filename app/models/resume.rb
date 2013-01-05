class Resume < ActiveRecord::Base
  attr_accessible :description, :name, :user
  validates :name, :presence => true
  validates :user, :presence => true
  belongs_to :user
end
