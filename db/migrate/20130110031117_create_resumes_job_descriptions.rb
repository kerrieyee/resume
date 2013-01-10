class CreateResumesJobDescriptions < ActiveRecord::Migration
  def change
  	create_table :job_descriptions_resumes do |t|
  		t.integer :resume_id
  		t.integer :job_description_id
  	end
  end
end
