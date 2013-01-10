class Resume < ActiveRecord::Base
  attr_accessible :description, :name, :user
  validates :name, :presence => true
  validates :user, :presence => true
  belongs_to :user
  has_and_belongs_to_many :job_descriptions, :join_table => :job_descriptions_resumes
end
