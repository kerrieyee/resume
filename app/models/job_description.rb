class JobDescription < ActiveRecord::Base
  attr_accessible :company, :description, :end_date, :location, :position, :start_date, :resume
  validates :company, :position, :start_date, presence: true
	has_and_belongs_to_many :resumes, :join_table => :job_descriptions_resumes
end
