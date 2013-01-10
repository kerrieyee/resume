class CreateJobDescriptions < ActiveRecord::Migration
  def change
    create_table :job_descriptions do |t|
      t.string :company,:null => false
      t.string :position, :null => false
      t.string :description
      t.date :start_date, :null => false
      t.date :end_date
      t.string :location
      t.boolean :current, :default => false, :null => false
      t.integer :resume_id

      t.timestamps
    end

    add_index :job_descriptions, :resume_id
  end
end
